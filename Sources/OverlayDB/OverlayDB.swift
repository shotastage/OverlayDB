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

    /// Settings
    private var identifier: String = "com.shotastage.OverlayDB"
    private var encryptionMode: EncryptionMode = .aes256gcm
    private var storageType: StorageType = .flushMemory

    /// Services
    private let storage = OBStorage()
    private let encryption = OBCrypto()
    private let query = OBQuery(command: .Create, subcommand: .InTo, target: "SOR", argument: "(A, V)")
    private let memory = OBInMemory()

    public init(identifier: String, encryptionMode: EncryptionMode, storageType: StorageType) {
        print("OverlayDB initialized.")
    }

    public func hello() {
        print("Hello, OverlayDB!")
    }
}
