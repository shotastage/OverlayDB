//
//  MainCLI.swift
//
//
//  Created by Shota Shimazu on 2023/09/05.
//

import ArgumentParser

#if os(macOS)

    @main
    struct MainCLI: ParsableCommand {
        static let configuration: CommandConfiguration = {
            CommandConfiguration(
                commandName: "ovdb",
                abstract: "OverlayDB CLI",
                version: "0.0.1",
                subcommands: [
                    StorageInspector.self
                ],
                defaultSubcommand: StorageInspector.self
            )
        }()
    }

#else

    @main
    enum MainCLI {
        static func main() {
            print("OverlayDB Commandline Tools is not supported on your platform.")
        }
    }

#endif
