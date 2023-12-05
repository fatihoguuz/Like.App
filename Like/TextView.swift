//
//  TextView.swift
//  Like
//
//  Created by Fatih Oğuz on 5.12.2023.
//

import UIKit
import CoreData

class TextView: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var textView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
        textView.dataSource = self
        textView.delegate = self
    }
    
    func getData() {
        
        
    }

    @objc func addButtonClicked() {
        performSegue(withIdentifier: "toMainMenu", sender: nil)
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
}
