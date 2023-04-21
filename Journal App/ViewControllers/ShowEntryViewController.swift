//
//  ShowEntryViewController.swift
//  Journal App
//
//  Created by Kanyaton Somjit on 2023-03-21.
//

import UIKit

class ShowEntryViewController: UIViewController {

    
    var journalEntry : JournalEntry?
    
    @IBOutlet weak var entryTextView: UITextView!
    
    @IBOutlet weak var navBar: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navBar.title = journalEntry?.date
        entryTextView.text = journalEntry?.content
       
    }
    

  

}
