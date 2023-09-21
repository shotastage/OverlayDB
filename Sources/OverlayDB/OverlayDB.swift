//
//  OverlayDB.swift
//
//
//  Created by Shota Shimazu on 2023/09/21.
//

open class OverlayDB {

    public enum StorageType {
        case flushMemory
        case persistent
    }

    public enum EncryptionMode {
        case aes256cbc
        case aes256gcm
    }

    private let identifier: String = "com.shotastage.OverlayDB"
    private let encryptionMode: EncryptionMode = .aes256gcm
    private let storageType: StorageType = .flushMemory

    public init() {
        print("OverlayDB initialized.")
    }

    public func hello() {
        print("Hello, OverlayDB!")
    }
}
