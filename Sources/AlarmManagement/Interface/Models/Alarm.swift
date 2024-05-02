//
//  Alarm.swift
//  AlarmManagementInterface
//
//  Created by Jaewon Yun on 5/2/24.
//  Copyright © 2024 woin2ee. All rights reserved.
//

import Foundation

public final class Alarm {
    let id: UUID
    var title: String
    var time: Time
    var repeatSetting: RepeatDayOfWeekSetting
    var sound: AlarmSound
    var isEnable: Bool
//    var isSnooze: Bool

    public init(id: UUID, title: String, time: Time, repeatSetting: RepeatDayOfWeekSetting, sound: AlarmSound, isEnable: Bool) {
        self.id = id
        self.title = title
        self.time = time
        self.repeatSetting = repeatSetting
        self.sound = sound
        self.isEnable = isEnable
    }
}
