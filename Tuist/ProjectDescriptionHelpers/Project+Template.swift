import ProjectDescription
import EnvPlugin

extension Project {
    public static func appTarget(
        name: String,
        infoPlist: InfoPlist = .default
    ) -> Target {
        return Target.target(
            name: name,
            destinations: projectEnv.destinations,
            product: .app,
            bundleId: "com.\(projectEnv.organizationName).\(projectEnv.name)",
            deploymentTargets: projectEnv.deploymentTargets,
            infoPlist: infoPlist,
            sources: ["Sources/**"],
            resources: ["Resources/**"],
//            entitlements: Entitlements?, TODO: do it when udo push alarm
//            scripts: [TargetScript], TODO: define actions to be executed before of after the build process of a target
//            dependencies: [TargetDependency],
            settings: Settings.settings(base: projectEnv.baseSetting))
//            coreDataModels: [CoreDataModel], TODO: path and version for CoreData Models
    }
    
    public static func unitTestTarget(
        name: String,
        infoPlist: InfoPlist = .default
    ) -> Target {
        return Target.target(
            name: "\(projectEnv)-UnitTest",
            destinations: projectEnv.destinations,
            product: .unitTests,
            bundleId: "com.\(projectEnv.organizationName).\(projectEnv.name)-UnitTest",
            deploymentTargets: projectEnv.deploymentTargets,
            infoPlist: infoPlist,
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            settings: Settings.settings(base: projectEnv.baseSetting))
    }
}
