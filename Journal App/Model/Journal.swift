//
//  Journal.swift
//  Journal App
//
//  Created by Kanyaton Somjit on 2023-03-21.
//

import Foundation

class Journal {
    private var entries = [JournalEntry]()
    
    init(){
        add(entry: JournalEntry(content: "jag åt"))
        add(entry: JournalEntry(content: "jag sov"))
        add(entry: JournalEntry(content: "jag programerade"))
    }
    
    var count: Int {
        return entries.count
    }
    
    func add(entry: JournalEntry) {
        entries.append(entry)
    }
    
    func entry(index: Int) -> JournalEntry? {
        
        if index >= 0 && index < entries.count{
            return entries[index]
        }
        return nil
    }
    
    
    
}
