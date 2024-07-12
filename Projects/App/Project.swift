import ProjectDescription
import ProjectDescriptionHelpers
import EnvPlugin

let configurations: [Configuration] = []
extension Configuration {
    public static func build(_ type: BuildTarget, name: String = "") -> Self {
        let buildName = type.rawValue
        switch type {
        case .dev:
            return .debug(
                name: BuildTarget.dev.configurationName
            )
        case .prod:
            return .release(
                name: BuildTarget.prod.configurationName
            )
        }
    }
}

let settings: Settings = .settings(
    base: env.baseSetting,
    configurations: configurations,
    defaultSettings: .recommended
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
        dependencies: [],
        settings: settings
    )
]

let project: Project = Project(
    name: env.name,
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
    ]
)

let schemes: [Scheme] = [
    Scheme.scheme(
        name: "\(env.name)-PROD",
        shared: true,
        buildAction: .buildAction(targets: ["\(env.name)"]),
        runAction: .runAction(configuration: .release),
        archiveAction: .archiveAction(configuration: .release),
        profileAction: .profileAction(configuration: .release),
        analyzeAction: .analyzeAction(configuration: .release)
    ),
//    Scheme.scheme(
//        name: "\(env.name)-DEV",
//        buildAction: .buildAction(targets: ["\(env.name)"]),
//        runAction: .runAction(configuration: .debug),
//        archiveAction: .archiveAction(configuration: .debug),
//        profileAction: .profileAction(configuration: .debug),
//        analyzeAction: .analyzeAction(configuration: .debug)
//    ),
]
