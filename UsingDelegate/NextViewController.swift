//
//  nextViewController.swift
//  UsingDelegate
//
//  Created by Mansi Mahajan on 6/21/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit


protocol someDelegate {
    func valueLable(update : String)
}


class NextViewController: UIViewController {

    var delegate : someDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var textValue: UITextField!
    @IBAction func submitAction(_ sender: UIButton) {
        delegate?.valueLable(update: textValue.text!)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
