//
//  OBQuery.swift
//
//
//  Created by Shota Shimazu on 2023/11/03.
//


public struct SQLike {

    private(set) public var queryString: String

    init(queryString: String) {
        self.queryString = queryString
    }
}

public struct OBQuery {

    public enum QueryCommand {
        case Create
        case Read
        case Update
        case Delete
    }

    public enum QuerySubcommand {
        case InTo
        case From
        case To
    }

    private var command: QueryCommand
    private var subcommand: QuerySubcommand
    private var target: String
    private var argument: String

    init(command: QueryCommand, subcommand: QuerySubcommand, target: String, argument: String) {
        self.command = command
        self.subcommand = subcommand
        self.target = target
        self.argument = argument
    }
}
