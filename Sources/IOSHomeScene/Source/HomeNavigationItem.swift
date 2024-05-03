//
//  HomeNavigationItem.swift
//  IOSHomeSceneSource
//
//  Created by Jaewon Yun on 5/3/24.
//  Copyright © 2024 woin2ee. All rights reserved.
//

import IOSSceneBaseSource
import SFSafeSymbols
import Then
import UIKit

final class HomeNavigationItem: UINavigationItem {
    
    let addAlarmButton = UIBarButtonItem().then {
        let symbolConfig = UIImage.SymbolConfiguration(weight: .medium)
        $0.image = UIImage(systemSymbol: .plus, withConfiguration: symbolConfig)
    }
    
    init() {
        super.init(title: String(localized: "Alarms", bundle: .module))
        
        self.rightBarButtonItem = addAlarmButton
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
