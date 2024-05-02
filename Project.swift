import ExternalDependencyPlugin
import MicroFeaturePlugin
import ProjectDescription
import ProjectDescriptionHelpers

let targets: [Target] = []
+ iOSAppFeature.resolveModules()
+ iOSSceneBaseFeature.resolveModules()
+ iOSHomeSceneFeature.resolveModules()

let project = Project(
    name: env.projectName,
    organizationName: env.organizationName,
    settings: .settings(
        debug: SettingsDictionary().otherLinkerFlags([
            "-Xlinker",
            "-interposable"
        ])
    ),
    targets: targets,
    schemes: [],
    additionalFiles: []
)
