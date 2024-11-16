//
//  Date+Extension.swift
//  Github Viewer
//
//  Created by MasterHardisk on 16/11/24.
//
import Foundation

extension Date {
    var toReadableDate: String {
        let outputFormatter = DateFormatter()
        outputFormatter.locale = Locale.current
        outputFormatter.dateStyle = .medium
        outputFormatter.timeStyle = .short
        
        return outputFormatter.string(from: self)
    }
}
