//
//  Alert.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-23.
//


import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDatea = AlertItem(
        title: Text("Server Error"),
        message: Text("The data recived from the server was invalid. Please contact support."),
        dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid response from the server. Please try again later."),
        dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message: Text("There was an issue with connecting to the server. If this is persists, please contact support."),
        dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text("Unable to complete your request at the time.Please check your internet connection"),
        dismissButton: .default(Text("OK")))
}
