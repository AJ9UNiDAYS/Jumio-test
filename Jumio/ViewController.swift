//
//  ViewController.swift
//  Jumio
//
//  Created by Adam Gask on 20/07/2017.
//  Copyright © 2017 UNiDAYS. All rights reserved.
//

import UIKit
import Netverify

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupJumio()
    }
    
    func setupJumio() {
        let configuration = NetverifyConfiguration()
        configuration.merchantApiToken = ""
        configuration.merchantApiSecret = ""
        configuration.dataCenter = JumioDataCenterEU
        configuration.delegate = self
    }
}

extension ViewController: NetverifyViewControllerDelegate {
    
    func netverifyViewController(_ netverifyViewController: NetverifyViewController, didFinishInitializingWithError error: Error?) {
        //
    }
    
    func netverifyViewController(_ netverifyViewController: NetverifyViewController, didCancelWithError error: Error?, scanReference: String?) {
        //
    }
    
    func netverifyViewController(_ netverifyViewController: NetverifyViewController, didFinishWith documentData: NetverifyDocumentData, scanReference: String) {
        //
    }
    
}
