//
//  REGISTER2.swift
//  lustre
//
//  Created by Shahad X on 27/05/1441 AH.
//  Copyright © 1441 Shahad X. All rights reserved.
//

import UIKit

class REGISTER2: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource {
    var selection : String?
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = pickerData[row]
        Gender.text = selection
        
    }
    
    let pickerData = [ "Female" , "Male"]
      
    func createToolBar(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: " Done ", style: .plain, target: self, action: #selector (doneAction))
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        let flaxSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolBar.setItems([flaxSpace,doneButton], animated: true)
        Gender.inputAccessoryView = toolBar
    }
    @objc func doneAction(){
    
        view.endEditing(true)
    }

       @IBOutlet weak var LastNAme: UITextField!
       @IBOutlet weak var FirstName: UITextField!
       
       @IBOutlet weak var BackButton: UIButton!
       @IBOutlet weak var UserName: UITextField!
       
       @IBOutlet weak var Gender: UITextField!
       
       
       @IBOutlet weak var NextPage: UIButton!
       
  
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        createPicker()
        createToolBar()
        
    }
    func createPicker(){
        
   let GenderPicker = UIPickerView()
        
        GenderPicker.delegate = self
        Gender.inputView = GenderPicker
}
}//class

    
    
        
    

   
    
   

        
      
      
        
        
    
    
    
   
    
   

