//
//  FileManager.swift
//  TaskList
//
//  Created by Abdalla Elnajjar on 2020-06-17.
//  Copyright © 2020 Abdalla Elnajjar. All rights reserved.
//

import Foundation
public extension FileManager {
  static var documentsDirectoryURL: URL {
    return `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
  }
}
