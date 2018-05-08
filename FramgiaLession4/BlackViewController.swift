//
//  BlackViewController.swift
//  FramgiaLession4
//
//  Created by nguyen.van.bao on 08/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

protocol passDataprotocol:class {
    func funcPassDataProtocol(with: String)
}
class BlackViewController:UIViewController {
    
    weak var delegate: passDataprotocol?
    
    
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
    

    @IBAction func backDataProtocol(_ sender: Any) {
        let data = "data pass delegate"
            delegate?.funcPassDataProtocol(with: data)
    }
    
    @IBAction func gotoView3(_ sender: UIButton) {
        let sbMain = UIStoryboard.init(name: "Main", bundle: nil)
        let viewbalck = sbMain.instantiateViewController(withIdentifier: "view3")
        navigationController?.pushViewController(viewbalck, animated: true)
    }
}

