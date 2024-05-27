import ProjectDescription
import EnvPlugin

let project: Project = Project(
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

let schemes: [Scheme] = [
    Scheme.scheme(
        name: "Prod-SwiftUITemplate",
        buildAction: .buildAction(targets: ["\(env.name)"]),
        runAction: .runAction(configuration: .release),
        archiveAction: .archiveAction(configuration: .release),
        profileAction: .profileAction(configuration: .release),
        analyzeAction: .analyzeAction(configuration: .release)
    ),
    Scheme.scheme(
        name: "Dev-SwiftUITemplate",
        buildAction: .buildAction(targets: ["\(env.name)"]),
        runAction: .runAction(configuration: .debug),
        archiveAction: .archiveAction(configuration: .debug),
        profileAction: .profileAction(configuration: .debug),
        analyzeAction: .analyzeAction(configuration: .debug)
    ),
]
