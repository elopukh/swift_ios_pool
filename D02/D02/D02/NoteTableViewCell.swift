//
//  NoteTableViewCell.swift
//  D02
//
//  Created by Ekateryna LOPUKH on 2/6/20.
//  Copyright © 2020 Ekateryna LOPUKH. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Date: UILabel!
    @IBOutlet weak var Info: UILabel!
    var note : (String,String,String)?
    {
        didSet
        {
            if let n = note{
                Name?.text = String(n.0)
                Date?.text = String(n.1)
                Info?.text = String(n.2)
            }
        }
    }

}
