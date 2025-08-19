//
//  ViewController.swift
//  iOS-102-Prework
//
//  Created by Aadil on 8/9/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stepperDidChange(morePetsStepper)
        
    }
    @IBAction func stepperDidChange(_ sender: UIStepper){
        morePetsStepper.value = 0
        morePetsStepper.stepValue = 1
        morePetsStepper.maximumValue = 5
        numberOfPetsLabel.text = "\(sender.value)"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {


       let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)

       // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
       let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!).I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs.It is \(morePetsSwitch.isOn) that I want more pets."

       print(introduction)
   }


}

