import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Label: UILabel!
    var numberPressed :Int = 0
    var firstNumber : String?
    var secondNumber : String?
    var sign : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func numberPressed(_ sender: UIButton) {
        numberPressed = Int(sender.currentTitle!)!
        if Label.text == "0" {
            Label.text = ""
            Label.text = Label.text! + String(numberPressed)
        }else{
        Label.text = Label.text! + String(numberPressed)
        }
    }
    @IBAction func ACPressed(_ sender: UIButton) {
        firstNumber = "0"
        secondNumber = "0"
        Label.text = ""
    }
    @IBAction func negativePositive(_ sender: Any) {
        let number = Float(Label.text!)!
        let negative = number*(-1)
        Label.text = String(negative)
    }
    @IBAction func dot(_ sender: UIButton) {
        Label.text = Label.text! + "."
    }
    
    @IBAction func BODMAS(_ sender: UIButton) {
        firstNumber = Label.text
        Label.text = ""
        sign = sender.currentTitle
    }
    
    @IBAction func Equals(_ sender: UIButton) {
        secondNumber = Label.text
        let first = Float(firstNumber!)!
        let two = Float(secondNumber!)!
        if sign == "÷" && firstNumber != "0" && secondNumber != "0"{
            Label.text = String(first/two)
        }else if sign == "+" {
            Label.text = String(first+two)
        }else if sign == "x" {
            Label.text = String(first*two)
        }else if sign == "-"{
            Label.text = String(first-two)
        }
    }
}

