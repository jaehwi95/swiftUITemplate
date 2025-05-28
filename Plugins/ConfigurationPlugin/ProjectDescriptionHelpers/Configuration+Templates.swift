//
//  Configuration+Templates.swift
//  ConfigurationPlugin
//
//  Created by Jaehwi Kim on 5/22/25.
//

import ProjectDescription

private extension ConfigurationName {
    static let dev: ConfigurationName = .configuration("DEV")
    static let qa: ConfigurationName = .configuration("QA")
    static let stage: ConfigurationName = .configuration("STAGE")
    static let prod: ConfigurationName = .configuration("PROD")
}

private extension Array where Element == Configuration {
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
    
    static let devProd: [Configuration] = [
        .debug(
            name: .dev,
            settings: ["SWIFT_ACTIVE_COMPILATION_CONDITIONS": "DEV"],
            xcconfig: .relativeToRoot("Configurations/DEV.xcconfig")
        ),
        .release(
            name: .prod,
            settings: ["SWIFT_ACTIVE_COMPILATION_CONDITIONS": "PROD"],
            xcconfig: .relativeToRoot("Configurations/PROD.xcconfig")
        )
    ]
    
    static let prodOnly: [Configuration] = [
        .release(
            name: .prod,
            settings: ["SWIFT_ACTIVE_COMPILATION_CONDITIONS": "PROD"],
            xcconfig: .relativeToRoot("Configurations/PROD.xcconfig")
        )
    ]
}
