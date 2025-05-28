//
//  Configuration+Templates.swift
//  ConfigurationPlugin
//
//  Created by Jaehwi Kim on 5/22/25.
//

import ProjectDescription

private extension Array where Element == Configuration {
    static let `default`: [Configuration] = [
        .debug(
            name: BuildConfig.dev.configurationName,
            settings: BuildConfig.dev.buildSettings,
            xcconfig: BuildConfig.dev.xcconfigPath
        ),
        .debug(
            name: BuildConfig.qa.configurationName,
            settings: BuildConfig.qa.buildSettings,
            xcconfig: BuildConfig.qa.xcconfigPath
        ),
        .release(
            name: BuildConfig.stage.configurationName,
            settings: BuildConfig.stage.buildSettings,
            xcconfig: BuildConfig.stage.xcconfigPath
        ),
        .release(
            name: BuildConfig.prod.configurationName,
            settings: BuildConfig.prod.buildSettings,
            xcconfig: BuildConfig.prod.xcconfigPath
        )
    ]
    
    static let devProd: [Configuration] = [
        .debug(
            name: BuildConfig.dev.configurationName,
            settings: BuildConfig.dev.buildSettings,
            xcconfig: BuildConfig.dev.xcconfigPath
        ),
        .release(
            name: BuildConfig.prod.configurationName,
            settings: BuildConfig.prod.buildSettings,
            xcconfig: BuildConfig.prod.xcconfigPath
        )
    ]
    
    static let prodOnly: [Configuration] = [
        .release(
            name: BuildConfig.prod.configurationName,
            settings: BuildConfig.prod.buildSettings,
            xcconfig: BuildConfig.prod.xcconfigPath
        )
    ]
}
