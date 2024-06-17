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
                addTask()
            } label: {
                Label("Add new task", systemImage: "plus")
            }

        }
    }
    
    func addTask() {
        let newTask = Task(title: "New task")
        tasks.append(newTask)
    }
}

#Preview {
    TaskListView(title: "All", tasks: .constant(Task.examples))
}
