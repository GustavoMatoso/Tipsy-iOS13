//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Gustavo Matoso on 28/03/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    var splitBill: String?
    var tip: String?
    var splitNumber: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if splitBill != nil{
            totalLabel.text = splitBill
            settingsLabel.text = "Split between \(splitNumber!), with \(tip!) tip."
        }
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
