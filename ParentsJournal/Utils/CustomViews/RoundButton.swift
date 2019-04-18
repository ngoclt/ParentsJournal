//
//  RoundButton.swift
//  ParentsJournal
//
//  Created by Ngoc LE on 4/18/19.
//  Copyright © 2019 LifeOfCoder. All rights reserved.
//

import UIKit

@IBDesignable class RoundButton: UIButton {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    sharedInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    sharedInit()
  }
  
  override func prepareForInterfaceBuilder() {
    sharedInit()
  }
  
  func sharedInit() {
    // Common logic goes here
  }
}
