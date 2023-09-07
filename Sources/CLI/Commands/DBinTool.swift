//
//  SwiftUIView.swift
//  
//
//  Created by Shota Shimazu on 2023/09/05.
//

import ArgumentParser
import ShellSwift


struct DBinTool: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "Data base file inspect tool"
    )

    func run() throws {
        print("This tool is now under construction that it has possibility of being unstable.")

        do {
            try Shell.run("echo now under construction.")
        } catch {
            print("Some command has been finished in fail.")
        }
    }
}
