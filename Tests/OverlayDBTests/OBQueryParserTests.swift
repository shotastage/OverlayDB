//
//  OBQueryParserTests.swift
//
//
//  Created by Shota Shimazu on 2023/11/04.
//

import XCTest
@testable import OverlayDB

final class OVQueryParserTests: XCTestCase {
    func testQueryParser() throws {
        // Example Query: CREATE INTO "new_session_kvs" KEY "newKey" OF "New_Value"
        let queryParser = OBQueryParser(query: "CREATE INTO \"New_Session_KVS\" KEY \"newKey\" OF \"New_Vlaue\"")

        queryParser.parse()
    }
}
