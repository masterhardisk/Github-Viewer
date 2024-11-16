//
//  HandleError.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import SwiftUI

class HandleError {
    var errorShow = false
    var errorMessage = ""
    
    internal func showError(message: String) {
        errorShow.toggle()
        errorMessage = message
    }
}
