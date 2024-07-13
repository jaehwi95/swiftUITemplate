//
//  Dependency+Project.swift
//  DependencyPlugin
//
//  Created by Jaehwi Kim on 7/13/24.
//

import ProjectDescription

public extension TargetDependency {
    static let Feature = project(target: "Feature", path: .relativeToRoot("Project/Feature"))
    static let Domain = project(target: "Domain", path: .relativeToRoot("Project/Domain"))
    static let Core = project(target: "Core", path: .relativeToRoot("Project/Core"))
    static let Shared = project(target: "Shared", path: .relativeToRoot("Project/Shared"))
}
