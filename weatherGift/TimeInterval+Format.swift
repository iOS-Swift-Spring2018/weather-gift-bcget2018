//
//  TimeInterval+Format.swift
//  weatherGift
//
//  Created by JB Bruggeman on 4/4/18.
//  Copyright © 2018 JB Bruggeman. All rights reserved.
//

import Foundation

extension TimeInterval {
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
            let usableDate = Date(timeIntervalSince1970: self)
            dateFormatter.timeZone = TimeZone(identifier: timeZone)
            let dateString = dateFormatter.string(from: usableDate)
            return dateString
        
    }
}
