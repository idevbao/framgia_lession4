//
//  ViewController.swift
//  FramgiaLession4
//
//  Created by nguyen.van.bao on 08/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
 
    
    var closurePassDatatoView4: ((_ data:String) -> ())?
    
    @IBOutlet weak var pushBlack: UIButton!
    
    @IBOutlet weak var txtRoot: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        print("\(String(describing: txtRoot.text))")
        

    }

    @IBAction func pushBlack(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil) // quan ly boi Main.storyboard
        let vcBlack = storyboard.instantiateViewController(withIdentifier: "blackview") as! BlackViewController
        vcBlack.stringData = txtRoot.text!
        self.navigationController?.pushViewController(vcBlack, animated: true)
    }
    
    @IBAction func passDataClosure(_ sender: UIButton) {
        closurePassDatatoView4?("pass data from view 1 to view 2 Closure")
        let sbMain = UIStoryboard.init(name: "Main", bundle: nil)
        let blackview = sbMain.instantiateViewController(withIdentifier: "blackview") as! BlackViewController
        self.navigationController?.pushViewController(blackview, animated: true)
    }
    @IBAction func passDataDelegate(_ sender: UIButton) {
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? BlackViewController {
            destination.delegate = self
        }
    }
}

extension ViewController:passDataprotocol {
    func funcPassDataProtocol(with: String) {
        print("\(with)")
    }
    
    
}
