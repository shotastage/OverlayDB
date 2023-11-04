//
//  OBStorage.swift
//
//
//  Created by Shota Shimazu on 2023/11/03.
//

import Foundation


public struct OBTransactionChunk {
    public let data: Data
    public let offset: Int
    public let length: Int
}

public struct OBTransaction {
    public let chunks: [OBTransactionChunk]
}

open class OBStorage {
    public init() {
        print("OBStorage initialized.")
    }
}
