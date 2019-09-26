//
//  ContentView.swift
//  ActionSheetInSwiftUI
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isVisible = false
    var body: some View {
        Button(action: {
            self.isVisible.toggle()
        }) {
            Text("Show Action Sheet")
        }.actionSheet(isPresented: $isVisible) {
            ActionSheet(title: Text("Welcome to Action Sheet tutorial"), message: Text("This is simple exaple on how to use an action sheet"), buttons: [
                ActionSheet.Button.default(Text("Share location")),
                ActionSheet.Button.default(Text("Rate")),
                ActionSheet.Button.destructive(Text("Report abuse"), action: {
                    print("This button was clicked")
                })
            ])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
