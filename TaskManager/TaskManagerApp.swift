//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by christian on 6/6/24.
//

import SwiftUI

@main
struct TaskManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandMenu("Task") {
                Button("New task") {
                    
                }
                .keyboardShortcut(KeyEquivalent("n"), modifiers: [.command])

            }
            
            CommandGroup(after: .newItem) {
                Button("New List") {
                    
                }
                .keyboardShortcut(KeyEquivalent("n"), modifiers: [.shift, .command])

            }
        }
        
        WindowGroup("Task") {
            Text("Form")
        }
        .windowStyle(.hiddenTitleBar)
        
        Settings {
            Text("Setting")
                .frame(minWidth: 150, minHeight: 100)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
        MenuBarExtra("Menu") {
            Button("Do something") {
                
            }
        }
    }
}
