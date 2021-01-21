//
//  AppReducer.swift
//  SwiftUINewArchitecture
//
//  Created by Jaime Jazareno III on 1/21/21.
//

import Foundation
import Combine

func appReducer(state: inout AppState,
                action: AppAction,
                environment: World) -> AnyPublisher<AppAction, Never> {
    switch action {
    case let .project(action):
        return projectReducer(state: &state.project,
                              action: action,
                              environment: environment)
            .map(AppAction.project)
            .eraseToAnyPublisher()
    case let .task(action):
        return taskReducer(state: &state.task,
                           action: action,
                           environment: environment)
            .map(AppAction.task)
            .eraseToAnyPublisher()
    }
}
