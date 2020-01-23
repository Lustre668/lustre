//
//  AddChildPage.swift
//  lustre
//
//  Created by Shahad X on 26/05/1441 AH.
//  Copyright © 1441 Shahad X. All rights reserved.
//

import UIKit

class AddChildPage: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource{
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
          GenderChild.text = selection
           
       }
    
    @IBOutlet weak var BackButton: UIButton!
    
    @IBOutlet weak var NameChild: UITextField!
    
    
   
    
    
    @IBOutlet weak var GenderChild: UITextField!
    
    
    @IBOutlet weak var AddChildButton: UIButton!
    
    @IBOutlet weak var NextChildButton: UIButton!
   
     @IBOutlet weak var BirthDateChild: UITextField!
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BirthDateChild.inputView = datePicker
        datePicker.datePickerMode = .date
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
        let flaxSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolbar.setItems([flaxSpace,doneButton], animated: true)
        BirthDateChild.inputAccessoryView = toolbar
        createPicker()
        createToolBar()

        // Do any additional setup after loading the view.
    }
    
    @objc func doneAction(){
        
        getDateFromPicker()
        view.endEditing(true)
    }
    func getDateFromPicker(){
        
         let dateFormatter = DateFormatter()
               dateFormatter .dateFormat="MM/dd/yyyy"
        BirthDateChild.text=dateFormatter.string(from: datePicker.date)
    }
    
    
    let pickerData = [ "Girl" , "Boy"]
      
    func createToolBar(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: " Done ", style: .plain, target: self, action: #selector (done))
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        let flaxSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolBar.setItems([flaxSpace,doneButton], animated: true)
        GenderChild.inputAccessoryView = toolBar
    }
    @objc func done(){
    
        view.endEditing(true)
    }
    
    
      func createPicker(){
          
     let GenderPicker = UIPickerView()
          GenderPicker.delegate = self
        
          GenderChild.inputView = GenderPicker
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


