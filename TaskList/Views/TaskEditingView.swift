//
//  TaskEditingView.swift
//  TasklList
//
//  Created by Abdalla Mohamed on 2020-06-14.
//  Copyright © 2020 Abdalla Mohamed. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var task:Task
    var body: some View {
        Form{
            TextField("Name", text: $task.name)
            Toggle("Completed",isOn: $task.completed)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(task: .constant( Task(name:"Task name")))
    }
}
