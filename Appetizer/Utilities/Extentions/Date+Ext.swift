//
//  Date+Ext.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 28. 12. 24.
//

import Foundation

extension Date {
    var eighteenYearAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    var oneHudredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!

    }
}
