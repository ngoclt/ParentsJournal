//
//  LoginPresenter.swift
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

protocol LoginPresentationLogic
{
  func presentSomething(response: Login.Something.Response)
}

class LoginPresenter: LoginPresentationLogic
{
  weak var viewController: LoginDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Login.Something.Response)
  {
    let viewModel = Login.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}