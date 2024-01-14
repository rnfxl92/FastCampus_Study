//
//  MemoViewModel.swift
//  VoiceMemo
//
//  Created by 박성민 on 1/2/24.
//

import Foundation

class MemoViewModel: ObservableObject {
    @Published var memo: Memo
    
    init(memo: Memo)  {
        self.memo = memo
    }
}
