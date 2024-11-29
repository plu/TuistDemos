import ProjectDescription

let demo2 = Project(
    name: "Demo2",
    targets: [
        .target(
            name: "Demo2App",
            destinations: .macOS,
            product: .commandLineTool,
            bundleId: "com.github.plu.Demo2Framework",
            deploymentTargets: .macOS("14.6"),
            infoPlist: .default,
            sources: [
                .glob(.relativeToRoot("Demo2/App/Sources/**"))
            ],
            dependencies: [
                .external(name: "AWSClientRuntime"),
                .external(name: "AWSS3"),
                .external(name: "AWSSecretsManager"),
                .external(name: "JWTKit"),
                .external(name: "OpenAPIVapor")
            ],
            settings: .settings(
                base: [
                    "SWIFT_VERSION": "6.0"
                ]
            )
        )
    ]
)
