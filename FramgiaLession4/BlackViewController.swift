//
//  BlackViewController.swift
//  FramgiaLession4
//
//  Created by nguyen.van.bao on 08/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class BlackViewController:UIViewController {
    
    
    
    var stringData:String!
    @IBOutlet weak var txtBlack: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let destination = segue.destination as? ViewController else { return }
//        destination.closurePassDatatoView4 = { [weak self] (data) in
//            self?.txtBlack.text = data
//        }
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
//        txtBlack.text = stringData
         let mainview = ViewController()
        
//        mainview.delegatePassData = self
        
        
    }

    @IBAction func gotoView3(_ sender: UIButton) {
        let sbMain = UIStoryboard.init(name: "Main", bundle: nil)
        let viewbalck = sbMain.instantiateViewController(withIdentifier: "view3")
        navigationController?.pushViewController(viewbalck, animated: true)
    }
}
extension BlackViewController:passDataprotocol {
    func FuncPassDataProtocol(with: String) {
        print("\(with)")
    }
    
    
}
