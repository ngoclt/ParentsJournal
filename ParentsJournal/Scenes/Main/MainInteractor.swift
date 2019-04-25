//
//  MainInteractor.swift
//  ParentsJournal
//
//  Created by Ngoc Tuan Le on 4/14/19.
//  Copyright (c) 2019 LifeOfCoder. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MainBusinessLogic {
  func setupView()
  func onTapButtonAdd()
}

protocol MainDataStore {
  //var name: String { get set }
}

class MainInteractor: MainDataStore {
  var presenter: MainPresentationLogic?
  var worker: MainWorker?
  //var name: String = ""
}

extension MainInteractor: MainBusinessLogic {
  
  func setupView() {
    presenter?.setupView()
  }
  
  
  func onTapButtonAdd() {
    presenter?.presentNewPostScreen()
  }
}
