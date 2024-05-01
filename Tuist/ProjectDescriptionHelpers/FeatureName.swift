public enum FeatureName: String {
    
    case iOSApp
    
    case iOSSceneBase
    case iOSHomeScene
    
    var upperCamelCased: String {
        self.rawValue.prefix(1).uppercased() + self.rawValue.dropFirst()
    }
}
