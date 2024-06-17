//
//  TaskListView.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import SwiftUI

struct StaticTaskListView: View {
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) { task in
            HStack {
                Image(systemName: task.isCompleted ? "circle.inset.filled" : "circle")
                Text(task.title)
            }
        }
    }
}

#Preview {
    StaticTaskListView(title: "all", tasks: Task.examples)
}
