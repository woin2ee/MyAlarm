import ExternalDependencyPlugin
import MicroFeaturePlugin
import ProjectDescription
import ProjectDescriptionHelpers

let featureTargets: [Target] =
iOSAppFeature.resolveModules()
+ iOSSceneBaseFeature.resolveModules()
+ iOSHomeSceneFeature.resolveModules()
+ alarmManagementFeature.resolveModules()

let project = Project(
    name: env.projectName,
    organizationName: env.organizationName,
    settings: .settings(
        debug: [
            "SWIFT_EMIT_LOC_STRINGS": true
        ]
            .otherLinkerFlags([
                "-Xlinker",
                "-interposable"
            ])
    ),
    targets: [
    ] + featureTargets,
    schemes: [],
    additionalFiles: []
)
