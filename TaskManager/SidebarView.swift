//
//  SidebarView.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import SwiftUI

struct SidebarView: View {
    @Binding var userCreatedLists: [TaskList]
    @State private var selection = TaskCategory.all
    
    var body: some View {
        List(selection: $selection) {
            Section("Favorites") {
                ForEach(TaskCategory.allCases) { category in
                    Label(category.displayName, systemImage: category.iconName)
                        .tag(category)
                }
            }
            
            Section("Your Lists"){
                ForEach(userCreatedLists) { list in
                    Label(list.title, systemImage: "folder")
                        .tag(TaskCategory.userLists(list))
                }
            }
        }
    }
}

#Preview {
    SidebarView(userCreatedLists: .constant(TaskList.examples))
        .listStyle(.sidebar)
}
