//
//  ContentView.swift
//  TasklList
//
//  Created by Abdalla Mohamed on 2020-06-10.
//  Copyright © 2020 Abdalla Mohamed. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var taskStore: TaskStore
    @State var modalIspresented = false
    
    var body: some View {
        
        NavigationView {
            List{
               ForEach(taskStore.prioritizedTasks) { index in
                  SectionView(prioritizedTasks: self.$taskStore.prioritizedTasks[index])
                }
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                Button(action: {self.modalIspresented = true}) {
                    Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $modalIspresented){
            NewTaskView(taskStore: self.taskStore)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( taskStore: TaskStore() )
    }
}


