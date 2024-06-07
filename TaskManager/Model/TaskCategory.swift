//
//  TaskSection.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import Foundation

enum TaskCategory: Identifiable, CaseIterable, Hashable {
    case all, complete, upcoming
    case userLists(TaskList)
    
    var id: String {
        switch self {
        case .all:
            "all"
        case .complete:
            "done"
        case .upcoming:
            "upcoming"
        case .userLists(let taskList):
            taskList.id.uuidString
        }
    }
    
    var displayName: String {
        switch self {
        case .all:
            "All"
        case .complete:
            "Complete"
        case .upcoming:
            "Upcoming"
        case .userLists(let taskList):
            taskList.title
        }
    }
    
    var iconName: String {
        switch self {
        case .all:
            "star"
        case .complete:
            "checkmark.circle"
        case .upcoming:
            "calendar"
        case .userLists(_):
            "folder"
        }
    }
    
    static var allCases: [TaskCategory] {
        [.all, .complete, .upcoming]
    }
    
    static func == (lhs: TaskCategory, rhs: TaskCategory) -> Bool {
        lhs.id == rhs.id
    }
}
