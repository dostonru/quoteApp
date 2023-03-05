// UIColor.swift
// Bubbles , 
// Created by Doston Rustamov 06/03/23.
// Copyright 2023 Doston Rustamov . All rights reserved.

import UIKit

extension UIColor {
    static func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        let baseColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        return baseColor
    }
}
