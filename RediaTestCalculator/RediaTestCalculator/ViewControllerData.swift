//
//  ViewControllerData.swift
//  RediaTestCalculator
//
//  Created by anders on 16/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import UIKit

class ViewControllerData: UIViewController {

    let cornerRadius: Int = 16
    @IBOutlet var display: UILabel!
    @IBOutlet var displayView: UIView!
    @IBOutlet var getButton: UIButton!
    @IBOutlet var postButton: UIButton!
    @IBOutlet var textView: UITextView!
    @IBOutlet var textArea: UITextView!
    
    var stringGenerator: StringGenerator!
    
    var prevViewController: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = stringGenerator.getText()
        setUpSwiping()
        styleComponents()
    }
    
    @IBAction func postResultToServer(_ sender: UIButton) {
        textView.text = stringGenerator.getText()
//        let url = URL(string: "https://thawing-caverns-74456.herokuapp.com/db")!
//        var request = URLRequest(url: url)
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//        request.httpMethod = "POST"
//        let postString = "res=" + stringGenerator.getText()
//        request.httpBody = postString.data(using: .utf8)
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data = data, error == nil else {                                                 // check for fundamental networking error
//                print("error=\(error)")
//                return
//            }
//            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
//                print("statusCode should be 200, but is \(httpStatus.statusCode)")
//                print("response = \(response)")
//            }
//            let responseString = String(data: data, encoding: .utf8)
//            print("responseString = \(responseString)")
//            self.textView.text = responseString
//        }
//        task.resume()
    }
    
    @IBAction func getDataFromServer(_ sender: UIButton) {
        textView.text = stringGenerator.getText()
    }
    
    func setUpSwiping() {
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        downSwipe.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(downSwipe)
    }
    
    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
        switch swipe.direction.rawValue {
        case 1: // Right swipe
            break
        case 2: // Left swipe
            break
        case 4: // Up swipe
            break
        case 8: // Down swipe
            switch prevViewController {
            case "RedFirst":
                performSegue(withIdentifier: "fromDataToRedFirst", sender: self)
            case "RedOrdered":
                performSegue(withIdentifier: "fromDataToRedOrdered", sender: self)
            case "GrayBG":
                performSegue(withIdentifier: "fromDataToGrayBG", sender: self)
            default:
                break
            }
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc1 = segue.destination as? ViewControllerRedFirst
        vc1?.stringGenerator = stringGenerator
        let vc2 = segue.destination as? ViewControllerRedOrdered
        vc2?.stringGenerator = stringGenerator
        let vc3 = segue.destination as? ViewControllerGrayBG
        vc3?.stringGenerator = stringGenerator
    }
    
    func styleComponents() {
        displayView.layer.cornerRadius = CGFloat(cornerRadius)
        getButton.layer.cornerRadius = CGFloat(cornerRadius)
        postButton.layer.cornerRadius = CGFloat(cornerRadius)
        textArea.layer.cornerRadius = CGFloat(cornerRadius)
    }
    
}
