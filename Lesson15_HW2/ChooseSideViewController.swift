//  Copyright © 2019 Olga Zimina. All rights reserved.

import UIKit

enum Color: String {
    
    case dark = "Dark"
    case bright = "Bright"
}

protocol ChooseSideViewControllerDelegate{
    
    func updateUI(color: Color)
}

class ChooseSideViewController: UIViewController {
    
    var delegate: ChooseSideViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chooseAndDismiss(_ sender: UIButton) {

        guard let choosedSide = sender.currentTitle else {return}
        delegate?.updateUI(color: Color.init(rawValue: choosedSide)!)
        self.dismiss(animated: true, completion: nil)
    }
}
