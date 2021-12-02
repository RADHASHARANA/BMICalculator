//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by IIFLUSER on 13/11/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var thirdLabel: UILabel!
    
    var bmi : String?
    var advice : String?
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmi
        thirdLabel.text = advice
        view.backgroundColor = color
        print(color! as Any)
        print(view.backgroundColor! as Any)
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
