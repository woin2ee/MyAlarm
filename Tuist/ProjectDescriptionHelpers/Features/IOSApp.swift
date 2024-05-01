import ExternalDependencyPlugin
import MicroFeaturePlugin
import ProjectDescription

public let iOSAppFeature = FeatureManifest(
    baseName: FeatureName.iOSApp.upperCamelCased,
    baseBundleID: env.baseBundleID,
    destinations: .iOS,
    sourceProduct: .app,
    deploymentTargets: env.iOSDeploymentTargets,
    sourceInfoPlist: .file(path: .relativeToRoot("InfoPlists/Info.plist")),
    resourcesForSource: .resources([
        .glob(pattern: .relativeToRoot("Resources/\(FeatureName.iOSApp.upperCamelCased)/**")),
    ]),
    featureDependencies: [
        iOSHomeSceneFeature,
    ],
    externalDependencies: [
    ],
    sourceSettings: .settings(),
    adoptedModules: [.source, .uiTests]
)
