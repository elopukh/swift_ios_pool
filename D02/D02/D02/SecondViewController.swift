//
//  SecondViewController.swift
//  D02
//
//  Created by Ekateryna LOPUKH on 2/6/20.
//  Copyright © 2020 Ekateryna LOPUKH. All rights reserved.
//
import UIKit
import Foundation
class SecondViewController: UIViewController{
    @IBOutlet weak var Name: UITextView!
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet weak var Info: UITextView!
   
    @IBAction func DoneButton(_ sender: UIBarButtonItem) {
       performSegue(withIdentifier: "Done", sender: self)
        print(Data.notes)
    }
    
    override func viewDidLoad() {
        date.minimumDate = Date()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let normdate = DateFormatter()
        normdate.dateFormat = "dd MMM yyyy hh:mm:ss"
        let textdata = normdate.string(from: date.date)
        if(Name.text.characters.count > 0)
        {
            Data.notes.append((Name.text!,textdata, Info.text!))
            print(Name.text!,textdata,Info.text!)
        }
    }

}
