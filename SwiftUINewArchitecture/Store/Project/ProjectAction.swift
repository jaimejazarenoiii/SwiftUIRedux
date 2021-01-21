//
//  ProjectAction.swift
//  SwiftUINewArchitecture
//
//  Created by Jaime Jazareno III on 1/21/21.
//

import Foundation

enum ProjectAction {
    case add(project: Project)
    case edit(project: Project)
    case delete(index: Int)
}
