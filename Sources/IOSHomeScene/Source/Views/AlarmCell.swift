//
//  AlarmCell.swift
//  IOSHomeSceneSource
//
//  Created by Jaewon Yun on 5/3/24.
//  Copyright © 2024 woin2ee. All rights reserved.
//

import AlarmManagementInterface
import PinLayout
import Then
import UIKit
import UIKitPlus

final class AlarmCell: UICollectionViewCell, ReuseIdentifying {

    let timeLabel: UILabel
    let titleLabel: UILabel
    let repeatDayOfWeekLabel: UILabel
    let enableSwitch: UISwitch
    
    override init(frame: CGRect) {
        timeLabel = UILabel().then {
            $0.text = "00:00"
            $0.font = .systemFont(ofSize: 60)
        }
        titleLabel = UILabel().then {
            $0.text = "Alarm"
            $0.font = .systemFont(ofSize: 18)
        }
        repeatDayOfWeekLabel = UILabel().then {
            $0.text = "Mon, Tue, Wed, Thu, Fri, Sat, Sun"
            $0.font = .systemFont(ofSize: 16)
            $0.textColor = .systemGray
        }
        enableSwitch = UISwitch().then {
            $0.isOn = false
        }
        
        super.init(frame: frame)
        
        self.contentView.addSubview(timeLabel)
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(repeatDayOfWeekLabel)
        self.contentView.addSubview(enableSwitch)
        
        setUpAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        repeatDayOfWeekLabel.pin.bottomStart().margin(16).sizeToFit()
        titleLabel.pin.above(of: repeatDayOfWeekLabel, aligned: .start).marginVertical(4).sizeToFit()
        timeLabel.pin.top().above(of: titleLabel, aligned: .start).marginVertical(10).sizeToFit()
        enableSwitch.pin.top(20%).end().margin(18)
    }
    
    private func setUpAppearance() {
        self.contentView.backgroundColor = .secondarySystemGroupedBackground
        self.contentView.layer.cornerRadius = 18
        self.contentView.layer.masksToBounds = true
        
        let shadowOffset: CGFloat = 4
        self.layer.shadowOffset = CGSize(width: shadowOffset, height: shadowOffset)
        self.layer.shadowRadius = 6
        self.layer.shadowOpacity = 0.2
        self.layer.shadowColor = CGColor(gray: 0, alpha: 1)
    }
}
