//
//  ContentView.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userCreatedLists: [TaskList] = TaskList.examples
    @State private var selection = TaskCategory.upcoming
    @State private var allTasks = Task.examples
    
    var body: some View {
        NavigationSplitView {
            SidebarView(userCreatedLists: $userCreatedLists, selection: $selection)
        } detail: {
            switch selection {
            case .all:
                TaskListView(title: "All", tasks: allTasks)
            case .complete:
                TaskListView(title: "Complete", tasks: allTasks.filter({$0.isCompleted}))
            case .upcoming:
                TaskListView(title: "Upcoming", tasks: allTasks.filter({ !$0.isCompleted }))
            case .userLists(let taskList):
                TaskListView(title: taskList.title, tasks: taskList.tasks)
            }
        }
    }
}

#Preview {
    ContentView()
}
