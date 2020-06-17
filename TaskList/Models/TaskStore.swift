//
//  SectionView.swift
//  TasklList
//
//  Created by Abdalla Mohamed on 2020-06-14.
//  Copyright © 2020 Abdalla Mohamed. All rights reserved.
//

import Combine
import Foundation 

class TaskStore: ObservableObject {

  
    @Published var prioritizedTasks:[PrioritizedTasks] = []
    
    init(){
        loadJSONPrioritizedTasks()
    }
    
    
    func getIndex(for priority: Task.Priority) -> Int {
        prioritizedTasks.firstIndex { $0.priority == priority }!
    }
    func loadJSONPrioritizedTasks(){
        guard let tasksJSONURL = Bundle.main.url(forResource: "PrioritizedTasks", withExtension: "json")
            else {
            return
        }
        
        let decoder  = JSONDecoder()
        do {
            let tastData = try Data(contentsOf:tasksJSONURL)
            prioritizedTasks = try decoder.decode([PrioritizedTasks].self,from: tastData)
        }
        catch let error {
            print(error)
    }
    }
}

private extension TaskStore.PrioritizedTasks {
  init(priority: Task.Priority, names: [String]) {
    self.init(
      priority: priority,
      tasks: names.map { Task(name: $0) }
    )
  }
}
