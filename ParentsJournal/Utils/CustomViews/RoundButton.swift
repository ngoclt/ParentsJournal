//
//  RoundButton.swift
//  ParentsJournal
//
//  Created by Ngoc LE on 4/18/19.
//  Copyright © 2019 LifeOfCoder. All rights reserved.
//

import UIKit

@IBDesignable class RoundButton: UIButton {
  
  @IBInspectable var cornerRadius: CGFloat = 15 {
    didSet {
      refreshCorners(value: cornerRadius)
    }
  }
  
  @IBInspectable public var borderColor: UIColor? = nil {
    didSet {
      refreshBorder(value: borderWidth, color: borderColor)
    }
  }
  
  @IBInspectable public var borderWidth: CGFloat = 0 {
    didSet {
      refreshBorder(value: borderWidth, color: borderColor)
    }
  }
  
  @IBInspectable var backgroundImageColor: UIColor = UIColor.init(red: 0, green: 122/255.0, blue: 255/255.0, alpha: 1) {
    didSet {
      refreshColor(color: backgroundImageColor)
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    baseInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    baseInit()
  }
  
  override func prepareForInterfaceBuilder() {
    baseInit()
  }
  
  private func baseInit() {
    refreshCorners(value: cornerRadius)
    refreshColor(color: backgroundImageColor)
    refreshBorder(value: borderWidth, color: borderColor)
  }
  
  private func refreshCorners(value: CGFloat) {
    layer.cornerRadius = value
    layer.masksToBounds = cornerRadius > 0
  }
  
  private func refreshColor(color: UIColor) {
    let image = createImage(color: color)
    setBackgroundImage(image, for: .normal)
    clipsToBounds = true
  }
  
  private func refreshBorder(value: CGFloat, color: UIColor?) {
    layer.borderWidth = value
    layer.borderColor = color?.cgColor
  }
  
  private func createImage(color: UIColor) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(CGSize(width: 1, height: 1), true, 0.0)
    color.setFill()
    UIRectFill(CGRect(x: 0, y: 0, width: 1, height: 1))
    let image = UIGraphicsGetImageFromCurrentImageContext()!
    return image
  }
}
