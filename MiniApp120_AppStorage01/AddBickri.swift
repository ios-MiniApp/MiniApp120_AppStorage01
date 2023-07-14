//
//  AddBickri.swift
//  MiniApp120_AppStorage01
//

import Foundation
import SwiftUI

struct AddBickri {

    @AppStorage("key") private var text = String()

    init() {
        addBickri()
    }

    /**
     1秒に一回「!」を追加
     */
    func addBickri() {
        self.text = ""
        var timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.text += "!"
        }
    }

}
