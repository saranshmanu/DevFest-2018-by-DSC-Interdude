//
//  ResultViewController.swift
//  DevFest 2018
//
//  Created by Ansh Mehra on 07/10/18.
//  Copyright © 2018 Ansh Mehra. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var constant = 1
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = resultTableView.dequeueReusableCell(withIdentifier: "resultPage", for: indexPath) as! ResultTableViewCell
        cell.marksLabel.text = marks[indexPath.row]
        cell.questionNumber.text = "Question " + String(indexPath.row + 1)
        let colorOne:CGFloat = 0.85
        let colorTwo:CGFloat = 0.9
        if constant%2 == 0{
            cell.backgroundColor = UIColor.init(red: colorOne, green: colorOne, blue: colorOne, alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor.init(red: colorTwo, green: colorTwo, blue: colorTwo, alpha: 1.0)
        }
        constant = constant + 1
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marks.count
    }
    @IBOutlet weak var resultTableView: UITableView!
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.dropShadow()
        resultTableView.delegate = self
        resultTableView.dataSource = self
        automaticallyAdjustsScrollViewInsets = false
    }
}
