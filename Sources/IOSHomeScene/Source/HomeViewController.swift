//
//  HomeViewController.swift
//  IOSHomeSceneSource
//
//  Created by Jaewon Yun on 5/2/24.
//  Copyright © 2024 woin2ee. All rights reserved.
//

import IOSSceneBaseSource
import Then
import UIKit

public final class HomeViewController: BaseViewController {

    let label = UILabel().then {
        $0.text = "Label"
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(label)
        label.sizeToFit()
        label.center = self.view.center
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
