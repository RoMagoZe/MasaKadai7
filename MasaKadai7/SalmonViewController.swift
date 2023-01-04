//
//  SalmonViewController.swift
//  MasaKadai7
//
//  Created by Mina on 2023/01/02.
//

import UIKit

class SalmonViewController: UIViewController {
    @IBOutlet private weak var numberInput1TextField: UITextField!
    @IBOutlet private weak var numberInput2TextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func resultButton(_ sender: Any) {
        let input1 = Int(numberInput1TextField.text ?? "") ?? 0
        let input2 = Int(numberInput2TextField.text ?? "") ?? 0
        let total = input1 + input2

        resultLabel.text = String(total)
        self.view.endEditing(true)
    }

    // 画面をタップしたらソフトウェアキーボードを隠す処理
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
