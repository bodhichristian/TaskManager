//
//  SidebarView.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import SwiftUI

struct SidebarView: View {
    @Binding var userLists: [TaskList]
    @Binding var selection: TaskCategory?
    
    var body: some View {
        List(selection: $selection) {
            Section("Favorites") {
                ForEach(TaskCategory.allCases) { category in
                    Label(category.displayName, systemImage: category.iconName)
                        .tag(category)
                }
            }
            
            Section("Your Lists"){
                ForEach($userLists) { $list in
                    HStack {
                        Image(systemName: "folder")
                        TextField("New List", text: $list.title)
                    }
                    
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            Button {
                addList()
            } label: {
                HStack(spacing: 4) {
                    Image(systemName: "plus.circle")
                        
                    Text("New List")
                }
                .font(.headline)
                .fontWeight(.medium)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            }
            .buttonStyle(.borderless)
            .foregroundStyle(.blue)
            .padding(.leading, 12)
            .padding(.bottom, 8)
        }
    }
    
    func addList() {
        let newList = TaskList(title: "New List")
        userLists.append(newList)
    }
}

#Preview {
    SidebarView(
        userLists: .constant(TaskList.examples),
        selection: .constant(TaskCategory.all)
    )
    .listStyle(.sidebar)
}
