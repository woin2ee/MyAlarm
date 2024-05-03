//
//  HomeViewController.swift
//  IOSHomeSceneSource
//
//  Created by Jaewon Yun on 5/2/24.
//  Copyright © 2024 woin2ee. All rights reserved.
//

import IOSSceneBaseSource
import ReactorKit
import RxCocoa
import UIKit

public final class HomeViewController: BaseViewController, View {

    let ownView = HomeView()
    let ownNavigationItem = HomeNavigationItem()
    
    public override var navigationItem: UINavigationItem {
        ownNavigationItem
    }
    
    public override func loadView() {
        self.view = ownView
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func bindActions() {
        ownNavigationItem.addAlarmButton.rx.tap.asSignal()
            .emit(with: self, onNext: { owner, _ in
                print("Tapped!")
            })
            .disposed(by: disposeBag)
    }
    
    public func bind(reactor: HomeReactor) {
        // Action
        
        // State
        
    }
}
