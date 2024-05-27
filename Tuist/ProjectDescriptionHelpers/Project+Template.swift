import ProjectDescription
import EnvPlugin

extension Project {
    public static func appTarget(
        name: String,
        infoPlist: InfoPlist = .default
    ) -> Target {
        return Target.target(
            name: name,
            destinations: env.destinations,
            product: .app,
            bundleId: "com.\(env.organizationName).\(env.name)",
            deploymentTargets: env.deploymentTargets,
            infoPlist: infoPlist,
            sources: ["Sources/**"],
            resources: ["Resources/**"],
//            entitlements: Entitlements?, TODO: do it when udo push alarm
//            scripts: [TargetScript], TODO: define actions to be executed before of after the build process of a target
//            dependencies: [TargetDependency],
            settings: Settings.settings(base: env.baseSetting))
//            coreDataModels: [CoreDataModel], TODO: path and version for CoreData Models
    }
    
    public static func unitTestTarget(
        name: String,
        infoPlist: InfoPlist = .default
    ) -> Target {
        return Target.target(
            name: "\(name)-UnitTest",
            destinations: env.destinations,
            product: .unitTests,
            bundleId: "com.\(env.organizationName).\(env.name)-UnitTest",
            deploymentTargets: env.deploymentTargets,
            infoPlist: infoPlist,
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            settings: Settings.settings(base: env.baseSetting))
    }
}
