//
//  Configuration+Templates.swift
//  ModulePlugin
//
//  Created by Jaehwi Kim on 5/22/25.
//

import ProjectDescription

extension ConfigurationName {
    static let dev = .configuration("DEV")
    static let qa = .configuration("QA")
    static let stage = .configuration("STAGE")
    static let prod = .configuration("PROD")
}

public extension Array where Element == Configuration {
    static let `default`: [Configuration] = [
        .debug(
            name: .dev,
            settings: ["SWIFT_ACTIVE_COMPILATION_CONDITIONS": "DEV"],
            xcconfig: .relativeToRoot("Configurations/DEV.xcconfig")
        ),
        .debug(
            name: .qa,
            settings: ["SWIFT_ACTIVE_COMPILATION_CONDITIONS": "QA"],
            xcconfig: .relativeToRoot("Configurations/QA.xcconfig")
        ),
        .release(
            name: .stage,
            settings: ["SWIFT_ACTIVE_COMPILATION_CONDITIONS": "STAGE"],
            xcconfig: .relativeToRoot("Configurations/STAGE.xcconfig")
        ),
        .release(
            name: .prod,
            settings: ["SWIFT_ACTIVE_COMPILATION_CONDITIONS": "PROD"],
            xcconfig: .relativeToRoot("Configurations/PROD.xcconfig")
        )
    ]
}
