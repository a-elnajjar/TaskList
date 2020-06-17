//
//  SectionView.swift
//  TasklList
//
//  Created by Abdalla Mohamed on 2020-06-14.
//  Copyright © 2020 Abdalla Mohamed. All rights reserved.
//

extension TaskStore {
    struct PrioritizedTasks:Codable {
    let priority: Task.Priority
    var tasks: [Task]
  }
}

extension TaskStore.PrioritizedTasks: Identifiable {
  var id: Task.Priority { priority }
}
