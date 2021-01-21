//
//  AppState.swift
//  SwiftUINewArchitecture
//
//  Created by Jaime Jazareno III on 1/21/21.
//

import Foundation

struct AppState {
    var project: ProjectState
    var task: TaskState

    init() {
        self.project = ProjectState(projects: [], project: Project(id: 0, title: ""))
        self.task = TaskState(tasks: [], task: Task(id: 0, title: "", description: ""))
    }
}
