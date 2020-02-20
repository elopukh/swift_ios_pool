//
//  ViewController.swift
//  D02
//
//  Created by Ekateryna LOPUKH on 2/6/20.
//  Copyright © 2020 Ekateryna LOPUKH. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    override func viewDidLoad() {
        TableView.rowHeight = UITableViewAutomaticDimension
        TableView.estimatedRowHeight = 50
    }
    @IBOutlet weak var TableView: UITableView!{
        didSet{
            TableView.delegate = self
            TableView.dataSource = self
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.notes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell") as! NoteTableViewCell
        cell.note = Data.notes[indexPath.row]
        return cell
    }
    @IBAction func unWindSegue(segue: UIStoryboardSegue){
        TableView.reloadData()
    }
}

