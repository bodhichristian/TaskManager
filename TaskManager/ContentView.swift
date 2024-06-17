//
//  ContentView.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userLists: [TaskList] = TaskList.examples
    @State private var selection = TaskCategory.upcoming
    @State private var allTasks = Task.examples
    
    var body: some View {
        NavigationSplitView {
            SidebarView(userLists: $userLists, selection: $selection)
        } detail: {
            switch selection {
            case .all:
                TaskListView(title: "All", tasks: $allTasks)
            case .complete:
                StaticTaskListView(title: "Complete", tasks: allTasks.filter({$0.isCompleted}))
            case .upcoming:
                StaticTaskListView(title: "Upcoming", tasks: allTasks.filter({ !$0.isCompleted }))
            case .userLists(let taskList):
                StaticTaskListView(title: taskList.title, tasks: taskList.tasks)
            }
        }
    }
}

#Preview {
    ContentView()
}
