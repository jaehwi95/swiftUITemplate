//
//  Project+Templates.swift
//  ModulePlugin
//
//  Created by Jaehwi Kim on 5/17/25.
//

//import ProjectDescription
//
//let schemes: [Scheme] = [
//    .scheme(
//        name: <#T##String#>,
//        shared: <#T##Bool#>,
//        buildAction: <#T##BuildAction?#>,
//        runAction: <#T##RunAction?#>
//    )
////
////    Scheme(
////        name: "MyApp-Dev",
////        shared: true,
////        buildAction: .buildAction(targets: ["MyApp"]),
////        runAction: .runAction(configuration: "Debug-Dev")
////    ),
////    Scheme(
////        name: "MyApp-Stage",
////        shared: true,
////        buildAction: .buildAction(targets: ["MyApp"]),
////        runAction: .runAction(configuration: "Debug-Stage")
////    ),
////    Scheme(
////        name: "MyApp-Prod",
////        shared: true,
////        buildAction: .buildAction(targets: ["MyApp"]),
////        runAction: .runAction(configuration: "Release-Prod")
////    )
//]
//
//public extension Project {
//    static var app: Project {
//        return Project(
//            name: Constants.appName,
//            organizationName: Constants.organizationName,
//            options: .options(
//                automaticSchemesOptions: .disabled,
//                disableBundleAccessors: true,
//                disableSynthesizedResourceAccessors: true
//            )
//            settings: .settings(
//                configurations: [
//                    
//                ]
//            )
//        )
//    }
//    
//}
//
//
//Project(
//    name: "App",
//    targets: [
//        .target(
//            name: "App",
//            destinations: .iOS,
//            product: .app,
//            bundleId: "com.jaebi.swiftUITemplate",
//            deploymentTargets: .iOS("18.0"),
//            infoPlist: .extendingDefault(with: [
//                "UILaunchScreen": [
//                    "UIColorName": "",
//                    "UIImageName": "",
//                ],
//            ]),
//            sources: ["Sources/**"],
//            resources: ["Resources/**"],
//            dependencies: [
//                .project(target: "Feature", path: "../Feature"),
//                .project(target: "Domain", path: "../Domain"),
//                .project(target: "Data", path: "../Data"),
//                .external(name: "ComposableArchitecture")
//            ]
//        ),
//        .target(
//            name: "AppTests",
//            destinations: .iOS,
//            product: .unitTests,
//            bundleId: "com.jaebi.swiftUITemplateTests"
//        )
////        .target(
////            name: "App",
////            destinations: .iOS,
////            product: .app,
////            bundleId: "com.jaebi.swiftUITemplate",
////            deploymentTarget: .iOS(targetVersion: "18.0", devices: [.iphone]),
////            sources: ["Sources/**"],
////            resources: ["Resources/**"],
////            dependencies: [
////                .project(target: "Feature", path: "../Feature"),
////                .project(target: "Domain", path: "../Domain"),
////                .project(target: "Data", path: "../Data"),
////                .external(name: "ComposableArchitecture")
////            ]
////        ),
////        .testTarget(
////            name: "AppTests",
////            dependencies: [.target(name: "App")],
////            sources: ["Tests/**"]
////        )
//    ]
//)
