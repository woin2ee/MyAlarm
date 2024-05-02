//
//  RepeatDayOfWeekSetting.swift
//  AlarmManagementInterface
//
//  Created by Jaewon Yun on 5/2/24.
//  Copyright © 2024 woin2ee. All rights reserved.
//

import Foundation

public struct RepeatDayOfWeekSetting {
    
    let dayOfWeeks: Set<DayOfWeek>
    
    init(_ dayOfWeeks: Set<DayOfWeek>) {
        self.dayOfWeeks = dayOfWeeks
    }
}

// MARK: Convenient settings

extension RepeatDayOfWeekSetting {
    
    /// 매일
    static let everyDay = RepeatDayOfWeekSetting(.all)
    
    /// 주중
    static let weekday = RepeatDayOfWeekSetting(.weekday)
    
    /// 주말
    static let weekend = RepeatDayOfWeekSetting(.weekend)
    
    /// 반복 안 함
    static let never = RepeatDayOfWeekSetting([])
}
