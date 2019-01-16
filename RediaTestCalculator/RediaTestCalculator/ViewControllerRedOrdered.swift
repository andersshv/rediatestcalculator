//
//  ViewControllerRedOrdered.swift
//  RediaTestCalculator
//
//  Created by anders on 16/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import UIKit

class ViewControllerRedOrdered: UIViewController {
    
    @IBOutlet var display: UILabel!
    
    var stringGenerator: StringGenerator!

    override func viewDidLoad() {
        super.viewDidLoad()
        if stringGenerator == nil {
            stringGenerator = StringGenerator()
        }
        display.text = stringGenerator.getText()
        setUpSwiping()
    }
    
    @IBAction func ButtonClicked(_ sender: UIButton) {
        let buttonId = sender.restorationIdentifier!
        let buttonEnum = ButtonEnum.convertToButtonEnum(buttonId)
        stringGenerator.buttonClicked(buttonEnum)
        let displayText = stringGenerator.getText()
        display.text = displayText
    }
    
    func setUpSwiping() {
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(leftSwipe)
        
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        upSwipe.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(upSwipe)
    }
    
    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
        switch swipe.direction.rawValue {
        case 1: // Right swipe
            break
        case 2: // Left swipe
            performSegue(withIdentifier: "toGrayBG", sender: self)
        case 4: // Up swipe
            performSegue(withIdentifier: "fromRedOrderedToData", sender: self)
        case 8: // Down swipe
            break
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc1 = segue.destination as? ViewControllerGrayBG
        vc1?.stringGenerator = stringGenerator
        let vc2 = segue.destination as? ViewControllerData
        vc2?.stringGenerator = stringGenerator
        vc2?.prevViewController = "RedOrdered"
        
    }
    
}
