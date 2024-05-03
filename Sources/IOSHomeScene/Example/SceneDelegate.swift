import Inject
import IOSHomeSceneSource
import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        
        let viewController = Inject.ViewControllerHost(HomeViewController())
        let navigationController = UINavigationController(rootViewController: viewController)
        window?.rootViewController = navigationController
    }
}
