//
//  ViewController.swift
//  Sentimentalist
//
//  Created by Yuan Li on 07.01.19.
//  Copyright © 2019 Yuan Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var MnemonicToPrivKeyButton: UIButton!
    @IBOutlet weak var PrivKeyToMnemonicButton: UIButton!
    @IBOutlet weak var TxSignButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func TxSign(_ sender: Any) {
        let tx = "{\"privateKey\":\"bad50f54db86259e077749d2593cd0fc74550a9b303da02972a37a16a7d23819\",\"from\":\"0858768edb7c24b329efd1133888c2e1d0c23e76\",\"to\":\"04d7e0cd097bf5da8a6ac64b333d606639ffd7e8\",\"value\":\"3\",\"inputData\":\"Test\"}"
        SECBlockJSAPI.shared.txSign(tx) { (value) in
            self.displayLabel.text = value
        }
    }
    
    @IBAction func PrivKeyToMnemonic(_ sender: Any) {
        let privKey = "bad50f54db86259e077749d2593cd0fc74550a9b303da02972a37a16a7d23819"
        SECBlockJSAPI.shared.privKeyToMnemonic(privKey) { (value) in
            self.displayLabel.text = value
        }
    }
    
    @IBAction func MnemonicToPrivKey(_ sender: Any) {
        let mnemonic = "river position steel require girl someone build truck spoil size crouch wedding earn luxury holiday amateur parent entire potato vintage heavy trouble there define"
        SECBlockJSAPI.shared.mnemonicToPrivKey(mnemonic) { (value) in
            self.displayLabel.text = value
        }
    }
    
}
