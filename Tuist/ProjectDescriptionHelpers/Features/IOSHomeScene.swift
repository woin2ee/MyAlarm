import ExternalDependencyPlugin
import MicroFeaturePlugin
import ProjectDescription

public let iOSHomeSceneFeature = FeatureManifest(
    baseName: FeatureName.iOSHomeScene.upperCamelCased,
    baseBundleID: env.baseBundleID,
    destinations: .iOS,
    sourceProduct: .framework,
    deploymentTargets: env.iOSDeploymentTargets,
    resourcesForSource: .resources([
        .glob(pattern: .relativeToRoot("Resources/\(FeatureName.iOSHomeScene.upperCamelCased)/**")),
    ]),
    featureDependencies: [
        iOSSceneBaseFeature,
    ],
    externalDependencies: [
    ],
    testsDependencies: [
    ],
    adoptedModules: [.source, .unitTests]
)
