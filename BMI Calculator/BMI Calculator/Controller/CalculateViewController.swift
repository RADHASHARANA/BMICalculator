//
//  ViewController.swift
//  BMI Calculator
//
//  Created by IIFLUSER on 11/11/21.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    

    
    var calculateBrain = CalculateBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        
        heightLabel.text = String(format: "%.3f", sender.value) + "m"
        calculateBrain.setHeight(sender.value)
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
      
        weightLabel.text = String(Int(sender.value)) + "Kg"
        calculateBrain.setWeight(sender.value)
    }
    
    func updateUI()
    {
        heightLabel.text = "0.1m"
        weightLabel.text = "5Kg"
        heightSlider.value = 0.1
        weightSlider.value = 5.0
    }
    
    @IBAction func calculate(_ sender: UIButton)
    {
          calculateBrain.calculateBMI()
//        let resultVC = ResultViewController()
//        self.present(resultVC, animated: true, completion: nil)
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.3f", BMI)
//        self.present(secondVC, animated: true, completion: nil)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
 
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.advice = calculateBrain.getAdvice()
        destinationVC.bmi = calculateBrain.getBMI()
        destinationVC.color = calculateBrain.getColor()
    }
}

