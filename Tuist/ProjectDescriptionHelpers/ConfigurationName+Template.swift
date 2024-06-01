//
//  ConfigurationName+Template.swift
//  ProjectDescriptionHelpers
//
//  Created by Jaehwi Kim on 6/1/24.
//

import ProjectDescription

public enum BuildTarget: String {
    case dev = "DEV"
    case prod = "PROD"
    
    public var configurationName: ConfigurationName {
        return ConfigurationName.configuration(self.rawValue)
    }
}
