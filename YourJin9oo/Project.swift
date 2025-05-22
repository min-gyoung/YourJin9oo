import ProjectDescription

let swiftLintScript = TargetScript.pre(
  script: """
    # Type a script or drag a script file from your workspace to insert its path.
    if [[ "$(uname -m)" == arm64 ]]; then
        export PATH="$HOME/.local/share/mise/shims:$PATH"
    fi
     echo "SwiftLint path: $(which swiftlint)"
    if which swiftlint > /dev/null; then
      swiftlint
    else
      echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
    fi
  """,
  name: "SwiftLint",
  basedOnDependencyAnalysis: true
)

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
            scripts: [swiftLintScript],
            dependencies: [
              .external(name: "Moya"),
              .external(name: "ComposableArchitecture")
            ],
            settings: .settings(
              base: ["DEVELOPMENT_TEAM": "CCQV8W4QU6",
                     "CODE_SIGN_IDENTITY": "Apple Development",
                     "CODE_SIGN_STYLE": "Manual",
                     "PROVISIONING_PROFILE_SPECIFIER": "jingoov2"
                    ],
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
