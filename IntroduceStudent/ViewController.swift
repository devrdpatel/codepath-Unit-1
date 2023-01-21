//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Dev Patel on 1/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    
    @IBOutlet weak var petStepperOutlet: UIStepper!
    @IBOutlet weak var petSwitch: UISwitch!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var petCountLabel: UILabel!
    @IBAction func introduceButton(_ sender: UIButton) {
        
        // Get the value of the yearSegmentControl (in the form of "first","second","third" or "fourth"
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex);
        
        // Create the introduction message
        let introduction = "My name is \(firstNameTextField.text!) \(LastNameTextField.text!) and I attend \(schoolTextField.text!). I am currently in my \(year!) year and I own \(petCountLabel.text!) pets. It is \(petSwitch.isOn) that I want more pets"
        
        // Create alert controller for the message
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // Create an action to dismiss the alert
        let alertAction = UIAlertAction(title: "Nice to meet you", style: .default, handler: nil)
        
        // Add action to alertController
        alertController.addAction(alertAction)
        
        // Show the alertController
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func petStepperAction(_ sender: UIStepper) {
        petCountLabel.text = "\(Int(sender.value))"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
