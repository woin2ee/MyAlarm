import ExternalDependencyPlugin
import MicroFeaturePlugin
import ProjectDescription

public let iOSSceneBaseFeature = FeatureManifest(
    baseName: FeatureName.iOSSceneBase.upperCamelCased,
    baseBundleID: env.baseBundleID,
    destinations: .iOS,
    sourceProduct: .framework,
    deploymentTargets: env.iOSDeploymentTargets,
    resourcesForSource: .resources([
        .glob(pattern: .relativeToRoot("Resources/\(FeatureName.iOSSceneBase.upperCamelCased)/**")),
    ]),
    featureDependencies: [
    ],
    externalDependencies: [
        .external(name: .inject),
        .external(name: .pinLayout),
        .external(name: .reactorKit),
        .external(name: .rxCocoa),
        .external(name: .rxSwift),
        .external(name: .sfSafeSymbols),
        .external(name: .then),
    ],
    adoptedModules: [.source]
)
