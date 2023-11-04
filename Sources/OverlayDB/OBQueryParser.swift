//
//  OBQueryParser.swift
//
//
//  Created by Shota Shimazu on 2023/11/04.
//

import Foundation


public struct OBQueryParser {

    let reservedToken: [String] = [
        "CREATE", "INTO", "KEY", "OF", "DELETE", "UPDTAE", "ALTER"
    ]

    // Example:: CREATE INTO "KVS_SESSION_NAME" KEY "KEY" OF "VALUE"

    private(set) public var queryString: String

    init(query: String) {
        self.queryString = query
    }

    public func parse() {
        print("Query Parser is currently only supports debugging usage!")
        for quey in queryString.components(separatedBy: " ") {
            print(quey)
        }
    }
}
