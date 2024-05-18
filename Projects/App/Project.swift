import ProjectDescription

let project = Project(
    name: "SwiftUITemplate",
    targets: [
        .target(
            name: "SwiftUITemplate",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.SwiftUITemplate",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["SwiftUITemplate/Sources/**"],
            resources: ["SwiftUITemplate/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "SwiftUITemplateTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.SwiftUITemplateTests",
            infoPlist: .default,
            sources: ["SwiftUITemplate/Tests/**"],
            resources: [],
            dependencies: [.target(name: "SwiftUITemplate")]
        ),
    ]
)
