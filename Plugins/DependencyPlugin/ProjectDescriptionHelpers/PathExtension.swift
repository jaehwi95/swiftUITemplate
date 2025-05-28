//
//  PathExtension.swift
//  ConfigurationPlugin
//
//  Created by Jaehwi Kim on 5/28/25.
//

import ProjectDescription

extension ProjectDescription.Path {
    static var app: Self {
        return .relativeToRoot("Projects/App")
    }
    
    static func relativeToData(path: String) -> Self {
        return .relativeToRoot("Projects/Data/\(path)")
    }
    
    static func relativeToDomain(path: String) -> Self {
        return .relativeToRoot("Projects/Domain/\(path)")
    }
    
    static func relativeToFeature(path: String) -> Self {
        return .relativeToRoot("Projects/Feature/\(path)")
    }
}
