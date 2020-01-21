//
//  LogInPage.swift
//  lustre
//
//  Created by Shahad X on 25/05/1441 AH.
//  Copyright © 1441 Shahad X. All rights reserved.
//

import UIKit

class LogInPage: UIViewController {
    
    @IBOutlet weak var LogInLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBAction func ForgotPassword(_ sender: UIButton) {
        
        
    }
    @IBOutlet weak var NextToHome: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
