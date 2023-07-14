//
//  ContentView.swift
//  MiniApp120_AppStorage01
//

import SwiftUI

struct MainView: View {

    @AppStorage("key") private var text = String()

    var body: some View {
        VStack {

            VStack {
                Text("普通のテキスト")
                Text(text)
            }

            VStack {
                Text("メソッドチェーン的なテキスト")
                Text(text.splitBy4Digits(betweenText: ","))
            }

        }
        .onAppear {
            AddBickri()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
