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
        generateTip(servicioSegment as Any)
    }

    @IBAction func generateTip(_ sender: Any) {
        let selectedindex = servicioSegment.selectedSegmentIndex

        switch selectedindex {
        case 0:
            print("vallet")
        case 1:
            print("limpieza")
        case 2:
            print("conserje")
        default:
            print("error")
        }
    }

    @IBAction func payTip(_ sender: Any) {
        let alert = UIAlertController(
            title: "DeLuxe Grand Hotel",
            message: "Gracias por su pago",
            preferredStyle: .alert)
        let btn = UIAlertAction(title: "Cerrar", style: .default, handler: nil)
        alert.addAction(btn)
        self.present(alert, animated: true)
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

