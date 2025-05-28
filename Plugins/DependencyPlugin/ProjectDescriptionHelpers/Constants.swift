//
//  Constants.swift
//  DependencyPlugin
//
//  Created by Jaehwi Kim on 5/17/25.
//

import ProjectDescription

enum ExternalDependency: String {
    case tca = "ComposableArchitecture"
}

enum BasePath: String {
    case app = "Projects/App"
    case data = "Projects/Data"
    case domain = "Projects/Domain"
    case feature = "Projects/Feature"
}
