//
//  OnboardingContent.swift
//  VoiceMemo
//
//  Created by 박성민 on 11/23/23.
//

import Foundation

struct OnboardingContent: Hashable {
    var imageFileName: String
    var title: String
    var subTitle: String
    
    init(
        imageFileName: String,
        title: String,
        subTitle: String
    ) {
        self.imageFileName = imageFileName
        self.title = title
        self.subTitle = subTitle
    }
}
