//
//  DIContainer.swift
//  EX_DIContainer
//
//  Created by 윤제 on 6/18/24.
//

import Foundation

class DIContainer {
    static let shared = DIContainer()
    private init() {}
    
    private var services: [String: AnyObject] = [:]

    func register<T>(type: T.Type, component: AnyObject) {
        let key = "\(type)"
        services[key] = component
    }
    
    func resolve<T>(type: T.Type) -> T {
        let key = "\(type)"
        return services[key] as! T
    }
}
