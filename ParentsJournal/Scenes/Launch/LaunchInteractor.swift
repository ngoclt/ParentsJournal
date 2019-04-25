//
//  LaunchInteractor.swift
//  ParentsJournal
//
//  Created by Ngoc LE on 4/18/19.
//  Copyright (c) 2019 LifeOfCoder. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol LaunchBusinessLogic {
  func validateSession(request: Launch.Something.Request)
}

protocol LaunchDataStore {
  //var name: String { get set }
}

class LaunchInteractor: LaunchBusinessLogic, LaunchDataStore {
  var presenter: LaunchPresentationLogic?
  var worker: LaunchWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func validateSession(request: Launch.Something.Request) {
    worker = LaunchWorker()
    worker?.doSomeWork()
    
    let response = Launch.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
