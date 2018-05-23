//
//  MasterViewController.swift
//  Display1To100
//
//  Created by NgocAnh on 5/22/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if name != nil{
            nameTextField.text = name
        }

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard nameTextField.text != "" else { return  }
        name = nameTextField.text
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
