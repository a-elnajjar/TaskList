//
//  SectionView.swift
//  TasklList
//
//  Created by Abdalla Mohamed on 2020-06-14.
//  Copyright © 2020 Abdalla Mohamed. All rights reserved.
//

import Foundation

struct Task: Identifiable, Codable {
  let id = UUID()
  
  var name: String
  var completed = false
  
  enum CodingKeys: String, CodingKey {
    case id = "identifier"
    case name
    case completed = "isComplete"
  }
  
}
