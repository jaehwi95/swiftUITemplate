import ProjectDescription
import EnvPlugin

let project = Project(
    name: "\(env.name)-Project",
    organizationName: env.organizationName,
    packages: [],
    targets: [
        .target(
            name: env.name,
            destinations: env.destinations,
            product: .app,
            bundleId: "com.jaebi.SwiftUITemplate",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: []
        ),
//        .target(
//            name: "SwiftUITemplate-Tests",
//            destinations: .iOS,
//            product: .unitTests,
//            bundleId: "com.jaebi.SwiftUITemplateTests",
//            infoPlist: .default,
//            sources: ["Tests/**"],
//            resources: [],
//            dependencies: [.target(name: "SwiftUITemplate")]
//        ),
    ]
)


let targets: [Target] = [
    Target.target(
        name: env.name,
        destinations: env.destinations,
        product: .app,
        bundleId: "com.jaebi.SwiftUITemplate",
        deploymentTargets: env.deploymentTargets,
        infoPlist: .extendingDefault(
            with: [
                "UILaunchStoryboardName": "LaunchScreen.storyboard",
            ]
        ),
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: []
    )
]
