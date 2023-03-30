import UIKit
class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    var tip: String? = "10%"
    var splitNumber = 2
    var splitBill: String?
    
    var billCalculator = BillCalculator()
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        tip = billCalculator.getTipValue(sender: (sender.titleLabel?.text)!)
        
        if tip == "0%"{
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            
        } else if tip == "10%"{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            
        } else{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            
        }
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumber = billCalculator.getSplitNumber(sender: Int(sender.value))
        
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
       
        billCalculator.getTotalBill(sender: billTextField.text ?? "error in getTotalBill in ibactin calculatepressed")
        splitBill = billCalculator.calculateSplitBill()
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueResult" {
            if let destinationVC = segue.destination as? ResultsViewController {
                destinationVC.splitBill = splitBill
                destinationVC.tip = tip
                destinationVC.splitNumber = splitNumber
            }
        }
    }
    
}


