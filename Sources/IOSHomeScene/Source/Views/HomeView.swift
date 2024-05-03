//
//  HomeView.swift
//  IOSHomeSceneSource
//
//  Created by Jaewon Yun on 5/3/24.
//  Copyright © 2024 woin2ee. All rights reserved.
//

import PinLayout
import Then
import UIKit

final class HomeView: UIView {

    lazy var alarmCollectionViewLayout = UICollectionViewFlowLayout().then {
        $0.scrollDirection = .vertical
    }
    
    private(set) lazy var alarmCollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: alarmCollectionViewLayout
    )
        .then {
            $0.register(AlarmCell.self, forCellWithReuseIdentifier: AlarmCell.reuseIdentifier)
            $0.dataSource = self
            $0.delegate = self
        }
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .systemGroupedBackground
        self.addSubview(alarmCollectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        alarmCollectionView.pin.all()
    }
}

extension HomeView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlarmCell.reuseIdentifier, for: indexPath)
        cell
        return cell
    }
}

extension HomeView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        
        if let windowSize = self.window?.bounds.size {
            let spacing: CGFloat = 20
            return CGSize(width: windowSize.width - spacing * 2, height: 150)
        }
        return .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
}
