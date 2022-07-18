//
//  ViewController.swift
//  AM_deber1
//
//  Created by Froy on 7/16/22.
//

import UIKit

class ViewController: UIViewController {
    // MARK - OUTLETS
    @IBOutlet weak var montoTotalLabel: UILabel!
    @IBOutlet weak var servicioSegment: UISegmentedControl!
    @IBOutlet weak var fechaLabel: UILabel!
    @IBOutlet weak var montoTipLabel: UILabel!
    @IBOutlet weak var tipButton: UIButton!

    // MARK - Functions

    override func viewDidLoad() {
        super.viewDidLoad()
        fechaLabel.text = getDate()
    }

    func generateTip() {
        
    }
    @IBAction func payTip(_ sender: Any) {
    }
    @IBAction func cancelAndRestart(_ sender: Any) {

    }

    func getDate() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let str = dateFormatter.string(from: date)
        return str
    }
}

