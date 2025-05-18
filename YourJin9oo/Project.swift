import ProjectDescription

let project = Project(
    name: "YourJin9oo",
    targets: [
        .target(
            name: "YourJin9oo",
            destinations: .iOS,
            product: .app,
            bundleId: "io.YourJin9oo",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .extendingDefault(
                with: [
                  "UIUserInterfaceStyle": "Light",
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["YourJin9oo/Sources/**"],
            resources: ["YourJin9oo/Resources/**"],
            dependencies: [
              .external(name: "Moya"),
              .external(name: "ComposableArchitecture")
            ],
            settings: .settings(
              base: ["DEVELOPMENT_TEAM": "CCQV8W4QU6",
                     "CODE_SIGN_IDENTITY": "Apple Development",
                     "CODE_SIGN_STYLE": "Manual",
                     "PROVISIONING_PROFILE_SPECIFIER": "jingoov2"],
              configurations: [],
              defaultSettings: .recommended
            )
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
