import ProjectDescription

public struct Environment {
    public let projectName = "MyAlarm"
    public let organizationName = "woin2ee"
    public let baseBundleID = "org.woin2ee.MyAlarm"
    public let iOSDeploymentTargets = DeploymentTargets.iOS("17.0")
}

public let env = Environment()
