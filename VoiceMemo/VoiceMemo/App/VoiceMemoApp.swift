//
//  VoiceMemoApp.swift
//  VoiceMemo
//
//  Created by 박성민 on 11/19/23.
//

import SwiftUI

@main
struct VoiceMemoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            OnboardingView()
        }
    }
}
