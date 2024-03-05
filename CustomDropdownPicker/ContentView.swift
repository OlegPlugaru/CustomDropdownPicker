//
//  ContentView.swift
//  CustomDropdownPicker
//
//  Created by Oleg Plugaru on 04.03.2024.
//

import SwiftUI

struct ContentView: View {
    // View Properties
    @State private var selection: String?
    @State private var selection1: String?
    @State private var selection2: String?
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                Button("Click Me") {
                    
                }
                
                DropDownView(
                    hint: "Select",
                    options: [
                        "Youtube",
                        "Instagram",
                        "X",
                        "Snapchat",
                        "TikTok",
                    ],
                    anchor: .bottom,
                    selection: $selection
                )
                
                DropDownView(
                    hint: "Select",
                    options: [
                        "Hello",
                        "World"
                    ],
                    anchor: .top,
                    selection: $selection2
                )
                
                DropDownView(hint: "Select",
                             options: [
                                "Short Form",
                                "Long Form",
                                "Both"
                             ], selection: $selection1
                )
                
                Button("Click Me") {
                    
                }
            }
            .navigationTitle("Dropdown Picker")
        }
    }
}

#Preview {
    ContentView()
}
