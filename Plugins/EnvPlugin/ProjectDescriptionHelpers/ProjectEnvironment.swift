//
//  ProjectEnvironment.swift
//  EnvPlugin
//
//  Created by Jaehwi Kim on 7/13/24.
//

import ProjectDescription

public struct ProjectEnvironment {
    public let name: String
    public let organizationName: String
    public let deploymentTargets: DeploymentTargets
    public let platform: Platform
    public let baseSetting: SettingsDictionary
    public let destinations : Destinations
}

public let projectEnv = ProjectEnvironment(
    name: "SwiftUITemplate",
    organizationName: "jaebi",
    deploymentTargets: .iOS("17.0"),
    platform: .iOS,
    baseSetting: [
        "OTHER_LDFLAGS": "-ObjC"
    ],
    destinations: [.iPhone]
)
