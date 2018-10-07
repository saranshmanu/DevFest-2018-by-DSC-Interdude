//
//  ScheduleViewController.swift
//  DevFest 2018
//
//  Created by Ansh Mehra on 07/10/18.
//  Copyright © 2018 Ansh Mehra. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    @IBOutlet weak var levelTextView: UITextField!
    @IBOutlet weak var topicTextView: UITextField!
    
    @IBOutlet weak var scheduleViewOne: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scheduleViewOne.dropShadow()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard(){
        levelTextView.resignFirstResponder()
        topicTextView.resignFirstResponder()
    }
}

extension UIView {
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: -3, height: 1)
        layer.shadowRadius = 5
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
