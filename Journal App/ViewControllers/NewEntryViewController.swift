//
//  NewEntryViewController.swift
//  Journal App
//
//  Created by Kanyaton Somjit on 2023-03-21.
//

import UIKit

class NewEntryViewController: UIViewController {
    
    @IBOutlet weak var journalEntryTextView: UITextView!
    
    var journal : Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        journalEntryTextView.becomeFirstResponder()
    }
    
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    

    @IBAction func save(_ sender: UIBarButtonItem) {
        
        if let entryText = journalEntryTextView.text{
            let newEntry = JournalEntry(content: entryText)
            
            journal?.add(entry: newEntry)
        }
        
        navigationController?.popViewController(animated: true)
    }
    


}
