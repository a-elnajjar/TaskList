//
//  AppDelegate.swift
//  TasklList
//
//  Created by Abdalla Mohamed on 2020-06-10.
//  Copyright © 2020 Abdalla Mohamed. All rights reserved.
//

import SwiftUI

public extension Binding where Value: CaseIterable & Equatable {
  var caseIndex: Binding<Value.AllCases.Index> {
    Binding<Value.AllCases.Index>(
      get: { Value.allCases.firstIndex(of: self.wrappedValue)! },
      set: { self.wrappedValue = Value.allCases[$0] }
    )
  }
}
