//
//  Reminder.swift
//  TodayTutorial
//
//  Created by Iuri Ferreira on 04/10/23.
//

import Foundation

struct Reminder : Identifiable {
    let id = UUID().uuidString
    var title : String
    var dueDate : Date
    var notes : String? = nil
    var isComplete : Bool = false
}


extension [Reminder] {
    func indexOfReminder(withId id: Reminder.ID) -> Self.Index {
        guard let index = firstIndex(where: { $0.id == id}) else {
            fatalError()
        }
        return index
    }
}

//Estudar-->
#if DEBUG

extension Reminder {
    static let example = Reminder(title: "Buy milk", dueDate: Date().addingTimeInterval(500), notes: "UHT zero lactose", isComplete: false)
    
    static let sampleData = [
        Reminder(
            title: "Submit reimbuirsment report", dueDate: Date().addingTimeInterval(800.0),
            notes: "Dont forget about taxi receipts", isComplete: false),
        Reminder(
            title: "Code review", dueDate: Date().addingTimeInterval(200.0),
            notes: "Dont forget about taxi receipts", isComplete: false),
        Reminder(
            title: "Pickup new contacts", dueDate: Date().addingTimeInterval(320.0),
            notes: "Optomestric close at 18:00", isComplete: true),
        Reminder(
            title: "Interview new project managar candidate", dueDate: Date().addingTimeInterval(140.0),
            notes: "Collaborate with manager project", isComplete: true),
        Reminder(
            title: "Mock up onboarding experience", dueDate: Date().addingTimeInterval(72000.0),
            notes: "Think different"),
        Reminder(
            title: "Review usage analytics", dueDate: Date().addingTimeInterval(83000.0),
            notes: "Discuss trends with management"),
        Reminder(
            title: "Confirm group reservation", dueDate: Date().addingTimeInterval(92500.0),
            notes: "Ask about space heaters"),
        Reminder(
            title: "Add beta testers to TestFlight", dueDate: Date().addingTimeInterval(101000.0),
            notes: "v0.9 out on Friday")
        
    ]
    
}

#endif
