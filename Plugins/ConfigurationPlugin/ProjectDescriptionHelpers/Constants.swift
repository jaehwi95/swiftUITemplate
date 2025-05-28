//
//  Constants.swift
//  ConfigurationPlugin
//
//  Created by Jaehwi Kim on 5/28/25.
//

import ProjectDescription

enum BuildConfig: String {
    case dev = "DEV"
    case qa = "QA"
    case stage = "STAGE"
    case prod = "PROD"
}

extension BuildConfig {
    var configurationName: ConfigurationName {
        .configuration(self.rawValue)
    }
    
    var xcconfigPath: Path {
        .relativeToRoot("Configurations/\(self.rawValue).xcconfig")
    }
    
    var buildSettings: SettingsDictionary {
        ["SWIFT_ACTIVE_COMPILATION_CONDITIONS": .string(self.rawValue)]
    }
}
