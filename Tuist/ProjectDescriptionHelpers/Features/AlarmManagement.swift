import ExternalDependencyPlugin
import MicroFeaturePlugin
import ProjectDescription

public let alarmManagementFeature = FeatureManifest(
    baseName: FeatureName.alarmManagement.upperCamelCased,
    baseBundleID: env.baseBundleID,
    destinations: .iOS,
    sourceProduct: .framework,
    deploymentTargets: env.iOSDeploymentTargets,
    featureDependencies: [
    ],
    externalDependencies: [
        .external(name: .realm),
        .external(name: .realmSwift),
        .external(name: .rxSwift),
    ],
    adoptedModules: [.interface, .source, .unitTests]
)
