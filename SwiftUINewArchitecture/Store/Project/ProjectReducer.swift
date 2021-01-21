//
//  ProjectReducer.swift
//  SwiftUINewArchitecture
//
//  Created by Jaime Jazareno III on 1/21/21.
//

import Foundation
import Combine

func projectReducer(state: inout ProjectState,
                    action: ProjectAction,
                    environment: World) -> AnyPublisher<ProjectAction, Never>{
    switch action {
    case .add(let project):
        state.projects.append(project)
    case .edit(let project):
        if let projectIndex = state.projects.enumerated()
            .first(where: { $0.element.id == project.id })?
            .offset {
            state.projects[projectIndex] = project
        }
    case .delete(let index):
        state.projects.remove(at: index)
    }

    return Empty().eraseToAnyPublisher()
}
