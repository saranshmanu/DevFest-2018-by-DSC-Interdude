//
//  SchedulePageTwoViewController.swift
//  DevFest 2018
//
//  Created by Ansh Mehra on 07/10/18.
//  Copyright © 2018 Ansh Mehra. All rights reserved.
//

import UIKit

class SchedulePageTwoViewController: UIViewController {
    @IBOutlet weak var timeTextLabel: UITextField!
    @IBOutlet weak var dateTextView: UITextField!
    @IBOutlet weak var scheduleViewTwo: UIView!
    
    @IBAction func DoneAction(_ sender: Any) {
        dismissViewControllers()
        let alert = UIAlertController(title: "Request Sent", message: "Wait for the admin to respond", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scheduleViewTwo.dropShadow()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard(){
        timeTextLabel.resignFirstResponder()
        dateTextView.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissViewControllers() {
        guard let vc = self.presentingViewController else { return }
        while (vc.presentingViewController != nil) {
            vc.dismiss(animated: true, completion: nil)
        }
    }
}
