//
//  REGISTER3.swift
//  lustre
//
//  Created by Shahad X on 25/05/1441 AH.
//  Copyright © 1441 Shahad X. All rights reserved.
//

import UIKit

class REGISTER3: UIViewController {
    

   @IBOutlet weak var PhoneNumberField: UITextField!
      @IBOutlet weak var EmailField: UITextField!
      @IBOutlet weak var InputTextField: UITextField!
      
    @IBOutlet weak var NextPage: UIButton!
    private var datePicker : UIDatePicker?
      
      
      override func viewDidLoad() {
          super.viewDidLoad()
          datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(REGISTER3.dateChanged(datePicker:)), for: .valueChanged)
        let tapGesture = UITapGestureRecognizer(target:  self, action: #selector( REGISTER3.viewTapped(gestureRecognizer:)) )
        view.addGestureRecognizer(tapGesture)
        InputTextField.inputView = datePicker
        // Do any additional setup after loading the view.
    }
    @objc func viewTapped( gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    
    
    
    @objc func dateChanged( datePicker : UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter .dateFormat="MM/dd/yyyy"
        InputTextField.text=dateFormatter.string(from: datePicker.date)
        
        view.endEditing(true)
        
        
        
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


