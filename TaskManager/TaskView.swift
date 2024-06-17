//
//  TaskView.swift
//  TaskManager
//
//  Created by christian on 6/16/24.
//

import SwiftUI

struct TaskView: View {
    @Binding var task: TaskOG
    @Binding var selectedTask: TaskOG?
    @Binding var showingInspector: Bool
    
    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            
            TextField("New Task", text: $task.title)
                .textFieldStyle(.plain)
            
            Button {
                showingInspector = true
                selectedTask = task
                
                
            } label: {
                Image(systemName: "ellipsis.circle")
            }
            .buttonStyle(.plain)
        }
    }
}

#Preview {
    TaskView(task: .constant(TaskOG.example), selectedTask: .constant(nil), showingInspector: .constant(false))
}
