import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip: String?
    var tipConverted: Float?
    var splitNumber = 0
    var totalBill: Float?
    
    @IBAction func tipChanged(_ sender: UIButton) {
        //        zeroPctButton.isSelected = true
        tip = sender.titleLabel?.text
        if tip == "0%"{
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tipConverted = 0.0
        } else if tip == "10%"{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            tipConverted = 0.1
        } else{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            tipConverted = 0.2
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumber = Int(sender.value)
        splitNumberLabel.text = String(Int(sender.value))
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if tip == nil{
            tipConverted = 0.1
            print(tipConverted!)
        } else{
            print(tipConverted!)
        }
        
        print(splitNumber)
        totalBill = Float(billTextField.text ?? "error bill value")
        
        print(totalBill!)
        
    }
}


