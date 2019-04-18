//
//  LaunchRouter.swift
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

@objc protocol LaunchRoutingLogic {
  func navigateToLogin(segue: UIStoryboardSegue?)
}

protocol LaunchDataPassing {
  var dataStore: LaunchDataStore? { get }
}

class LaunchRouter: NSObject, LaunchRoutingLogic, LaunchDataPassing {
  weak var viewController: LaunchViewController?
  var dataStore: LaunchDataStore?
  
  // MARK: Routing
  
  func navigateToLogin(segue: UIStoryboardSegue?) {
    if let segue = segue {
      guard let destinationVC = segue.destination as? LoginViewController else {
          return
      }
      
      guard var destinationDS = destinationVC.router?.dataStore else { return }
      
      passDataToLogin(source: dataStore!, destination: &destinationDS)
    } else {
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      guard let destinationVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController else {
        return
      }
      
      guard var destinationDS = destinationVC.router?.dataStore else { return }
      
      passDataToLogin(source: dataStore!, destination: &destinationDS)
      navigateToLoginScreen(source: viewController!, destination: destinationVC)
    }
  }

  // MARK: Navigation
  
  func navigateToLoginScreen(source: LaunchViewController, destination: LoginViewController) {
    source.show(destination, sender: nil)
  }
  
  // MARK: Passing data
  
  func passDataToLogin(source: LaunchDataStore, destination: inout LoginDataStore) {
//    destination.name = source.name
  }
}
