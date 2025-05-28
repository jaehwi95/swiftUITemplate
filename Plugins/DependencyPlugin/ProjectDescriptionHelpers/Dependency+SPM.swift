//
//  Dependency+SPM.swift
//  DependencyPlugin
//
//  Created by Jaehwi Kim on 5/22/25.
//

import ProjectDescription

extension TargetDependency {
    struct SPM {}
}

extension TargetDependency.SPM {
    static let TCA = TargetDependency.external(name: ExternalDependency.tca.rawValue)
}
