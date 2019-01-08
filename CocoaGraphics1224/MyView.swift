//
//  MyView.swift
//  CocoaGraphics1224
//
//  Created by taka2018 on 2018/12/24.
//  Copyright © 2018 taka2018. All rights reserved.
//

import Cocoa

class MyView: NSView {
    
    var isDark: Bool = false
    
    override func draw(_ brightRect: NSRect) {
        var backgroundColor = NSColor.white
        if isDark {
            backgroundColor = NSColor.lightGray
        }
        
        backgroundColor.set()
        NSBezierPath.fill(bounds)
        
        NSColor.blue.set()
        let path = NSBezierPath()
        path.move(to: NSPoint(x: 0, y: 0))
        path.line(to: NSPoint(x: bounds.width, y: bounds.height))
        path.stroke()
    }

//    override func draw(_ dirtyRect: NSRect) {
//        let backgroundColor = NSColor.lightGray
//        backgroundColor.set()
//        NSBezierPath.fill(bounds)
//
//        NSColor.green.set()
//        let path = NSBezierPath()
//        path.move(to: NSPoint(x: 0, y: 0))
//        path.line(to: NSPoint(x: bounds.width, y: bounds.height))
//        path.stroke()
//    }
}
