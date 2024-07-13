//
//  Configuration.swift
//  ConfigPlugin
//
//  Created by Jaehwi Kim on 2024/07/11.
//

import ProjectDescription

public extension ConfigurationName {
    static var dev: ConfigurationName = DeployTarget.dev.configurationName
    static var test: ConfigurationName = DeployTarget.test.configurationName
    static var demo: ConfigurationName = DeployTarget.demo.configurationName
    static var prod: ConfigurationName = DeployTarget.prod.configurationName
}

public extension Array where Element == Configuration {
    static let `default`: [Configuration] = [
        .debug(name: .dev, xcconfig: DeployTarget.dev.xcConfigPath),
        .debug(name: .test, xcconfig: DeployTarget.test.xcConfigPath),
        .release(name: .demo, xcconfig: DeployTarget.demo.xcConfigPath),
        .release(name: .prod, xcconfig: DeployTarget.prod.xcConfigPath)
    ]
    
    static let test: [Configuration] = [
        .debug(name: .dev, xcconfig: DeployTarget.test.xcConfigPath),
        .debug(name: .test, xcconfig: DeployTarget.test.xcConfigPath),
        .release(name: .demo, xcconfig: DeployTarget.test.xcConfigPath),
        .release(name: .prod, xcconfig: DeployTarget.test.xcConfigPath)
    ]
    
    static let demo: [Configuration] = [
        .debug(name: .dev, xcconfig: DeployTarget.demo.xcConfigPath),
        .debug(name: .test, xcconfig: DeployTarget.demo.xcConfigPath),
        .release(name: .demo, xcconfig: DeployTarget.demo.xcConfigPath),
        .release(name: .prod, xcconfig: DeployTarget.demo.xcConfigPath)
    ]
}
