//
//  Todo.swift
//  VoiceMemo
//
//  Created by 박성민 on 12/1/23.
//

import Foundation

struct Todo: Hashable {
    var title: String
    var time: Date
    var day: Date
    var selected: Bool
    
    var convertedDayAndTime: String {
        // 오늘 - 오후 3:00에 알림
        "\(day.formattedDay) - \(time.formattedTime)에 알림"
    }
}
