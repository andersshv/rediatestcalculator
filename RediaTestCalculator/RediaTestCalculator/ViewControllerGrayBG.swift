//
//  ViewControllerGrayBG.swift
//  RediaTestCalculator
//
//  Created by anders on 16/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import UIKit

class ViewControllerGrayBG: UIViewController {

    let cornerRadius: Int = 16
    @IBOutlet var display: UILabel!
    @IBOutlet var displayView: UIView!
    @IBOutlet var clear: UIButton!
    @IBOutlet var div: UIButton!
    @IBOutlet var seven: UIButton!
    @IBOutlet var eight: UIButton!
    @IBOutlet var nine: UIButton!
    @IBOutlet var times: UIButton!
    @IBOutlet var four: UIButton!
    @IBOutlet var five: UIButton!
    @IBOutlet var six: UIButton!
    @IBOutlet var minus: UIButton!
    @IBOutlet var one: UIButton!
    @IBOutlet var two: UIButton!
    @IBOutlet var three: UIButton!
    @IBOutlet var plus: UIButton!
    @IBOutlet var zero: UIButton!
    @IBOutlet var result: UIButton!
    
    var stringGenerator: StringGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if stringGenerator == nil {
            stringGenerator = StringGenerator()
        }
        display.text = stringGenerator.getText()
        setUpSwiping()
        styleComponents()
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
            performSegue(withIdentifier: "toRedFirst", sender: self)
        case 4: // Up swipe
            performSegue(withIdentifier: "fromGrayBGToData", sender: self)
        case 8: // Down swipe
            break
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc1 = segue.destination as? ViewControllerRedFirst
        vc1?.stringGenerator = stringGenerator
        let vc2 = segue.destination as? ViewControllerData
        vc2?.stringGenerator = stringGenerator
        vc2?.prevViewController = "GrayBG"
    }
    
    func styleComponents() {
        displayView.layer.cornerRadius = CGFloat(cornerRadius)
        clear.layer.cornerRadius = CGFloat(cornerRadius)
        div.layer.cornerRadius = CGFloat(cornerRadius)
        seven.layer.cornerRadius = CGFloat(cornerRadius)
        eight.layer.cornerRadius = CGFloat(cornerRadius)
        nine.layer.cornerRadius = CGFloat(cornerRadius)
        times.layer.cornerRadius = CGFloat(cornerRadius)
        times.contentEdgeInsets = UIEdgeInsets(top: 15,left: 0,bottom: 0,right: 0)
        four.layer.cornerRadius = CGFloat(cornerRadius)
        five.layer.cornerRadius = CGFloat(cornerRadius)
        six.layer.cornerRadius = CGFloat(cornerRadius)
        minus.layer.cornerRadius = CGFloat(cornerRadius)
        one.layer.cornerRadius = CGFloat(cornerRadius)
        two.layer.cornerRadius = CGFloat(cornerRadius)
        three.layer.cornerRadius = CGFloat(cornerRadius)
        plus.layer.cornerRadius = CGFloat(cornerRadius)
        zero.layer.cornerRadius = CGFloat(cornerRadius)
        result.layer.cornerRadius = CGFloat(cornerRadius)
    }

}
