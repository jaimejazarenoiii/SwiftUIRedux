//
//  TaskReducer.swift
//  SwiftUINewArchitecture
//
//  Created by Jaime Jazareno III on 1/21/21.
//

import Foundation
import Combine

func taskReducer(state: inout TaskState,
                 action: TaskAction,
                 environment: World) -> AnyPublisher<TaskAction, Never>{
    // Implement your state changes here
    return Empty().eraseToAnyPublisher()
}
