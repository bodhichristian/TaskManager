//
//  Task.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import Foundation

struct TaskOG: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
    var dueDate: Date? = nil
    var details: String? = nil
    
    static let example = TaskOG(title: "Mow the lawn", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    
    static let examples = [
        TaskOG(title: "Mow the lawn", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!),
        TaskOG(title: "Get kitty litter", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
        TaskOG(title: "Get a present for the party", dueDate: Calendar.current.date(byAdding: .day, value: 4, to: Date())!),
        TaskOG(title: "Order ink", dueDate: Calendar.current.date(byAdding: .day, value: 7, to: Date())!),
        TaskOG(title: "Finish side project", dueDate: Calendar.current.date(byAdding: .day, value: 14, to: Date())!),
        TaskOG(title: "Make cookies", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: -14, to: Date())!),
        TaskOG(title: "Learn about how bridges are built.", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: -3, to: Date())!)
        
     ]
    
}
