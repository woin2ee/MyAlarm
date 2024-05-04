//
//  AlarmManagementService.swift
//  AlarmManagementInterface
//
//  Created by Jaewon Yun on 5/2/24.
//  Copyright © 2024 woin2ee. All rights reserved.
//

import Foundation

public protocol AlarmManagementService {
    
    func saveAlarm(_ alarm: Alarm)
    
    func deleteAlarm(by id: UUID)
    
    func enableAlarm(by id: UUID)
    
    func disableAlarm(by id: UUID)
}
