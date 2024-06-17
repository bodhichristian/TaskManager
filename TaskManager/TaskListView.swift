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
    
    @State private var selectedTask: Task? = nil
    @State private var showingInspector = false
    
    var body: some View {
        List($tasks) { $task in
            TaskView(task: $task, selectedTask: $selectedTask, showingInspector: $showingInspector)
        }
        .navigationTitle(title)
        .toolbar {
            ToolbarItemGroup {
                Button {
                    addTask()
                } label: {
                    Label("Add new task", systemImage: "plus")
                }
                .keyboardShortcut(KeyEquivalent("n"), modifiers: [.command])
                
                Button {
                    showingInspector.toggle()
                } label: {
                    Label(showingInspector ? "Hide Inspector" : "Show Inspector", systemImage: "sidebar.right")
                }
            }
        }
        .inspector(isPresented: $showingInspector) {
            Group {
                if let selectedTask {
                    Text(selectedTask.title)
                        .font(.headline)
                } else {
                    Text("Select a task to view details.")
                        .font(.headline)
                }
            }
            .frame(minWidth: 100, maxWidth: .infinity)
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
