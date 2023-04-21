//
//  JournalEntryModel.swift
//  Journal App
//
//  Created by Kanyaton Somjit on 2023-03-21.
//

import Foundation

class JournalEntry {
    var content : String
   private var unformateddate : Date
    private var dateFormatter = DateFormatter()
    
    var date : String {
        return dateFormatter.string(from: unformateddate)
    }
    
    
    init(content: String) {
        self.content = content
        unformateddate = Date()
        dateFormatter.dateStyle = .medium
    }
    
    
    init(content: String, date: Date) {
        self.content = content
        self.unformateddate = date
        dateFormatter.dateStyle = .medium
    }
}
