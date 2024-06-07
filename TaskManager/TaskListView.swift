//
//  TaskListView.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) { task in
            HStack {
                Image(systemName: task.isCompleted ? "circle.fill.circle" : "circle")
                Text(task.title)
            }
        }
    }
}

#Preview {
    TaskListView(title: "all", tasks: Task.examples)
}
