//
//  ProjectDeployTarget.swift
//  ConfigPlugin
//
//  Created by Jaehwi Kim on 2024/07/11.
//

import Foundation
import ProjectDescription

enum ProjectDeployTarget: String {
    case dev = "DEV"
    case stage = "STAGE"
    case prod = "PROD"

    var configurationName: ConfigurationName {
        ConfigurationName.configuration(self.rawValue)
    }
    
    var xcConfigPath: Path {
        .relativeToRoot("XCConfig/\(self.rawValue).xcconfig")
    }
}
