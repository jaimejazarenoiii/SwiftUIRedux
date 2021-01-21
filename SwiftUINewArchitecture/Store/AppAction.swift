//
//  AppAction.swift
//  SwiftUINewArchitecture
//
//  Created by Jaime Jazareno III on 1/21/21.
//

import Foundation

enum AppAction {
    case project(action: ProjectAction)
    case task(action: TaskAction)
}
