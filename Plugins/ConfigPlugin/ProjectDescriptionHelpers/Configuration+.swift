//
//  Configuration+.swift
//  ConfigPlugin
//
//  Created by Jaehwi Kim on 2024/07/11.
//

import ProjectDescription

public extension ConfigurationName {
    static var dev: ConfigurationName = ProjectDeployTarget.dev.configurationName
    static var stage: ConfigurationName = ProjectDeployTarget.stage.configurationName
    static var prod: ConfigurationName = ProjectDeployTarget.prod.configurationName
}

public extension Array where Element == Configuration {
    static let `default`: [Configuration] = [
        .debug(name: .dev, xcconfig: ProjectDeployTarget.dev.xcConfigPath),
        .debug(name: .stage, xcconfig: ProjectDeployTarget.stage.xcConfigPath),
        .release(name: .prod, xcconfig: ProjectDeployTarget.prod.xcConfigPath),
    ]
}
