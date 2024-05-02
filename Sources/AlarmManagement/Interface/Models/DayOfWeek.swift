//
//  DayOfWeek.swift
//  AlarmManagementInterface
//
//  Created by Jaewon Yun on 5/2/24.
//  Copyright © 2024 woin2ee. All rights reserved.
//

import Foundation

public enum DayOfWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

extension Set<DayOfWeek> {
    
    /// 모든 요일
    static let all = Set<DayOfWeek>([.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday])
    
    /// 주중
    static let weekday = Set<DayOfWeek>([.monday, .tuesday, .wednesday, .thursday, .friday])
    
    /// 주말
    static let weekend = Set<DayOfWeek>([.saturday, .sunday])
}
