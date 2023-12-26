//
//  CustomNavigationBar.swift
//  VoiceMemo
//
//  Created by 박성민 on 12/1/23.
//

import SwiftUI

struct CustomNavigationBar: View {
    let isDiplayLeftBtn: Bool
    let isDisplayRightBtn: Bool
    let leftBtnAction: () -> Void
    let rightBtnAction: () -> Void
    let rightBtnType: NavigationBtnType
    
    init(
        isDiplayLeftBtn: Bool = true,
        isDisplayRightBtn: Bool = true,
        leftBtnAction: @escaping () -> Void = {},
        rightBtnAction: @escaping () -> Void = {},
        rightBtnType: NavigationBtnType = .edit
    ) {
        self.isDiplayLeftBtn = isDiplayLeftBtn
        self.isDisplayRightBtn = isDisplayRightBtn
        self.leftBtnAction = leftBtnAction
        self.rightBtnAction = rightBtnAction
        self.rightBtnType = rightBtnType
    }
    
    var body: some View {
        HStack {
            if isDiplayLeftBtn {
                Button(
                    action: leftBtnAction,
                    label: {
                        Image("leftArrow")
                    }
                )
            }
            
            Spacer()
            
            if isDisplayRightBtn {
                Button(
                    action: rightBtnAction,
                    label: {
                        if rightBtnType == .close {
                            Image("close")
                        } else {
                            Text(rightBtnType.rawValue)
                                .foregroundColor(.customBlack)
                        }
                    }
                )
            }
        }
        .padding(.horizontal, 20)
        .frame(height: 20)
    }
}

#Preview {
    CustomNavigationBar()
}
