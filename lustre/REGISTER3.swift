//
//  REGISTER3.swift
//  lustre
//
//  Created by Shahad X on 25/05/1441 AH.
//  Copyright © 1441 Shahad X. All rights reserved.
//

import UIKit

class REGISTER3: UIViewController {
    
    @IBOutlet weak var BackButton: UIButton!
    
   @IBOutlet weak var PhoneNumberField: UITextField!
      @IBOutlet weak var EmailField: UITextField!
      @IBOutlet weak var InputTextField: UITextField!
      
    @IBOutlet weak var NextPage: UIButton!
    let datePicker = UIDatePicker()
      
      
      
          override func viewDidLoad() {
              super.viewDidLoad()
              
              InputTextField.inputView = datePicker
              datePicker.datePickerMode = .date
              let toolbar = UIToolbar()
              toolbar.sizeToFit()
              let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
              let flaxSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
              toolbar.setItems([flaxSpace,doneButton], animated: true)
              InputTextField.inputAccessoryView = toolbar

              // Do any additional setup after loading the view.
          }
          
          @objc func doneAction(){
              
              getDateFromPicker()
              view.endEditing(true)
          }
          func getDateFromPicker(){
              
               let dateFormatter = DateFormatter()
                     dateFormatter .dateFormat="MM/dd/yyyy"
              InputTextField.text=dateFormatter.string(from: datePicker.date)
          }
          
          
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


