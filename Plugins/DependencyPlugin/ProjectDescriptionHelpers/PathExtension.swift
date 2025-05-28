//
//  PathExtension.swift
//  ConfigurationPlugin
//
//  Created by Jaehwi Kim on 5/28/25.
//

import ProjectDescription

extension ProjectDescription.Path {
    static var app: Self {
        return .relativeToRoot(BasePath.app.rawValue)
    }
    
    static func relativeToData(path: String) -> Self {
        return .relativeToRoot("\(BasePath.data)/\(path)")
    }
    
    static func relativeToDomain(path: String) -> Self {
        return .relativeToRoot("\(BasePath.domain)/\(path)")
    }
    
    static func relativeToFeature(path: String) -> Self {
        return .relativeToRoot("\(BasePath.feature)/\(path)")
    }
}
