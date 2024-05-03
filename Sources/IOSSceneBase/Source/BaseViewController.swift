//
//  BaseViewController.swift
//  IOSSceneBaseSource
//
//  Created by Jaewon Yun on 5/2/24.
//  Copyright © 2024 woin2ee. All rights reserved.
//

import RxSwift
import UIKit

open class BaseViewController: UIViewController {
    
    public var disposeBag = DisposeBag()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        bindActions()
    }
    
    open func bindActions() {}
}
