import ProjectDescription

let project = Project(
    name: "YourJin9oo",
    targets: [
        .target(
            name: "YourJin9oo",
            destinations: .iOS,
            product: .app,
            bundleId: "io.YourJin9oo",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["YourJin9oo/Sources/**"],
            resources: ["YourJin9oo/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "YourJin9ooTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.YourJin9ooTests",
            infoPlist: .default,
            sources: ["YourJin9oo/Tests/**"],
            resources: [],
            dependencies: [.target(name: "YourJin9oo")]
        ),
    ]
)
