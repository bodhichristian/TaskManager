//
//  TaskGroup.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import Foundation

struct TaskList: Identifiable, Hashable {
    let id = UUID()
    var title: String
    let creationDate: Date = Date()
    var tasks: [Task] = []
    
    static let example = TaskList(
        title: "Personal",
        tasks: Task.examples
    )
    
    static let examples = [
        TaskList.example,
        TaskList(title: "New list")
    ]
}

