//
//  DeployTarget.swift
//  ConfigPlugin
//
//  Created by Jaehwi Kim on 2024/07/11.
//

import Foundation
import ProjectDescription

enum DeployTarget: String {
    case dev = "DEV"
    case test = "TEST"
    case demo = "DEMO"
    case prod = "PROD"

    var configurationName: ConfigurationName {
        ConfigurationName.configuration(self.rawValue)
    }
    
    var xcConfigPath: Path {
        .relativeToRoot("XCConfig/\(self.rawValue).xcconfig")
    }
}
