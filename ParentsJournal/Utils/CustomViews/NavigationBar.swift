//
//  NavigationBar.swift
//  ParentsJournal
//
//  Created by Ngoc LE on 4/26/19.
//  Copyright © 2019 LifeOfCoder. All rights reserved.
//

import UIKit

class NavigationBar: UINavigationBar {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setBackgroundImage(UIImage(), for: .default)
        shadowImage = UIImage()
        isTranslucent = true
        
        tintColor = .white
    }
}
