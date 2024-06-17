//
//  ContentView.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userLists: [TaskList] = TaskList.examples
    @State private var selection: TaskCategory? = nil
    @State private var allTasks = TaskOG.examples
    
    @State private var query = ""
    
    var body: some View {
        NavigationSplitView {
            SidebarView(userLists: $userLists, selection: $selection)
                .searchable(text: $query)
        } detail: {
            if query.isEmpty {
                switch selection {
                case .all:
                    TaskListView(title: "All", tasks: $allTasks)
                case .complete:
                    StaticTaskListView(title: "Complete", tasks: allTasks.filter({$0.isCompleted}))
                case .upcoming:
                    StaticTaskListView(title: "Upcoming", tasks: allTasks.filter({ !$0.isCompleted }))
                case .userLists(let taskList):
                    StaticTaskListView(title: taskList.title, tasks: taskList.tasks)
                case .none:
                    TaskListView(title: "All", tasks: $allTasks)
                }
            } else  {
                StaticTaskListView(title: "All", tasks: allTasks.filter({$0.title.lowercased().contains(query.lowercased())}))
            }
        }
    }
}

#Preview {
    ContentView()
}
