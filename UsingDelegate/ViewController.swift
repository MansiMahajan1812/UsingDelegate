//
//  ViewController.swift
//  UsingDelegate
//
//  Created by Mansi Mahajan on 6/21/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, someDelegate {
   
@IBOutlet weak var labelForMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
    //var vc = self.storyboard?.instantiateViewController(withIdentifier: "nextViewController") as! NextViewController

    }
    
    
    func valueLable(update : String){
        self.labelForMessage.text = update
    }

    @IBAction func SubmitAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "nextViewController") as! NextViewController
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
    
}

