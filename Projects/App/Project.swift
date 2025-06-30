//
//  Project.swift
//  
//
//  Created by Jaehwi Kim on 5/3/25.
//

import ProjectDescription

let project = Project(
    name: "App",
    organizationName: "jaebi",
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "com.jaebi.swiftUITemplate",
            deploymentTargets: .iOS("18.0"),
            infoPlist: .extendingDefault(with: [
                "UILaunchScreen": [
                    "UIColorName": "",
                    "UIImageName": "",
                ],
            ]),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Feature", path: "../Feature"),
                .project(target: "Domain", path: "../Domain"),
                .project(target: "Data", path: "../Data"),
                .external(name: "ComposableArchitecture")
            ]
        ),
        .target(
            name: "AppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.jaebi.swiftUITemplateTests"
        )
//        .target(
//            name: "App",
//            destinations: .iOS,
//            product: .app,
//            bundleId: "com.jaebi.swiftUITemplate",
//            deploymentTarget: .iOS(targetVersion: "18.0", devices: [.iphone]),
//            sources: ["Sources/**"],
//            resources: ["Resources/**"],
//            dependencies: [
//                .project(target: "Feature", path: "../Feature"),
//                .project(target: "Domain", path: "../Domain"),
//                .project(target: "Data", path: "../Data"),
//                .external(name: "ComposableArchitecture")
//            ]
//        ),
//        .testTarget(
//            name: "AppTests",
//            dependencies: [.target(name: "App")],
//            sources: ["Tests/**"]
//        )
    ]
)
