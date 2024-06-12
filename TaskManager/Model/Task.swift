//
//  Task.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
    var dueDate: Date
    var details: String? = nil
    
    static let example = Task(title: "Mow the lawn", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    
    static let examples = [
        Task(title: "Mow the lawn", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!),
        Task(title: "Get kitty litter", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
        Task(title: "Get a present for the party", dueDate: Calendar.current.date(byAdding: .day, value: 4, to: Date())!),
        Task(title: "Order ink", dueDate: Calendar.current.date(byAdding: .day, value: 7, to: Date())!),
        Task(title: "Finish side project", dueDate: Calendar.current.date(byAdding: .day, value: 14, to: Date())!),
        Task(title: "Make cookies", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: -14, to: Date())!),
        Task(title: "Learn about how bridges are built.", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: -3, to: Date())!)
        
     ]
    
}
