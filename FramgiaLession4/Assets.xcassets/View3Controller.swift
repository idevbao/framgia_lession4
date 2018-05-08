//
//  View3Controller.swift
//  FramgiaLession4
//
//  Created by nguyen.van.bao on 08/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class View3Controller: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func backPrevious(_ sender: UIButton) {
    }
    
    @IBAction func backRoot(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func backToView(_ sender: UIButton) {
        let viewprevious = self.navigationController!.viewControllers[1]
            as! BlackViewController
        viewprevious.stringData = "POP data viewprevious"
        
        self.navigationController!.popToViewController(viewprevious, animated: true)
        
    }
    
    @IBAction func Present(_ sender: UIButton) {
        let sbMain = UIStoryboard.init(name: "Main", bundle: nil)
        let view4controller = sbMain.instantiateViewController(withIdentifier: "View4")
        self.present(view4controller, animated: true) {
            
        }
    }
}
