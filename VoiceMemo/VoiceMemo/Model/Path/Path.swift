//
//  Path.swift
//  VoiceMemo
//
//  Created by 박성민 on 11/26/23.
//

import Foundation

class PathModel: ObservableObject {
    @Published var paths: [PathType]
    
    init(paths: [PathType] = []) {
        self.paths = paths
    }
}

