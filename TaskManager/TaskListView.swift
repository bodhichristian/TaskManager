//
//  TaskListView.swift
//  TaskManager
//
//  Created by christian on 6/16/24.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    @Binding var tasks: [Task]
    
    var body: some View {
        List($tasks) { $task in
            TaskView(task: $task)
        }
        .toolbar {
            Button {
                
            } label: {
                Label("Add new task", systemImage: "plus")
            }

        }
    }
}

#Preview {
    TaskListView(title: "All", tasks: .constant(Task.examples))
}
