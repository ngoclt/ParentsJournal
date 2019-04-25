//
//  TabBarItem.swift
//  ParentsJournal
//
//  Created by Ngoc LE on 4/25/19.
//  Copyright © 2019 LifeOfCoder. All rights reserved.
//

import UIKit

class TabBarItem: UITabBarItem {
    
    override func awakeFromNib() {
        if let image = image {
            self.image = image.withRenderingMode(.alwaysOriginal)
        }
        
        if let image = selectedImage {
            self.selectedImage = image.withRenderingMode(.alwaysOriginal)
        }
    }
}
