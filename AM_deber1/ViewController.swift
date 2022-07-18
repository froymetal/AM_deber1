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
        let montoTotal = Double(montoTotalLabel.text!) ?? 0.0
        var tipValue: Double

        switch selectedindex {
        case 0:
            tipValue = montoTotal * 5 / 100
            montoTipLabel.text = String(tipValue)
            print("vallet \(tipValue)")
        case 1:
            tipValue = montoTotal * 8 / 100
            montoTipLabel.text = String(tipValue)
            print("limpieza \(tipValue)")
        case 2:
            tipValue = montoTotal * 3 / 100
            montoTipLabel.text = String(tipValue)
            print("conserje \(tipValue)")
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
        let randomInt = Int.random(in: 100..<1000)
        montoTotalLabel.text = String(randomInt)
    }

    func getDate() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let str = dateFormatter.string(from: date)
        return str
    }
}

