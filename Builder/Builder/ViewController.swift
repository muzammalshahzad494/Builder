//
//  ViewController.swift
//  Builder
//
//  Created by Muzammal Shahzad on 5/29/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var dataArr = ["Generics", "Closures", "Error Handling", "Concurrency", "Memory Management", "Protocol-Oriented Programming (POP)", "Advanced Data Structures", "Higher-Order Functions", "Advanced Swift Patterns", "Core Data" ]
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
//        tableview.register(UINib(nibName: "HomeRows", bundle: nil), forCellReuseIdentifier: "HomeRows")
        TableViewHelper.registerTableViewCell(tableView: tableview, cellClass: HomeRows.self)
        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HomeRows.self), for: indexPath) as! HomeRows
        cell.rowtitle.text = dataArr[indexPath.row]
        return cell
    }

}


