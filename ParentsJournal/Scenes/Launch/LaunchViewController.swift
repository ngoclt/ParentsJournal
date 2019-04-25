//
//  LaunchViewController.swift
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

protocol LaunchDisplayLogic: class {
  func displaySomething(viewModel: Launch.Something.ViewModel)
}

class LaunchViewController: UIViewController, LaunchDisplayLogic {
  var interactor: LaunchBusinessLogic?
  var router: (NSObjectProtocol & LaunchRoutingLogic & LaunchDataPassing)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup() {
    let viewController = self
    let interactor = LaunchInteractor()
    let presenter = LaunchPresenter()
    let router = LaunchRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }
  
  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("navigateTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    
    validateSession()
  }
    
    override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
      DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
        guard let weakSelf = self else {
          return
        }
        
        weakSelf.router?.navigateToLogin(segue: nil)
      }

    }
  
  // MARK: Do something
  
  //@IBOutlet weak var nameTextField: UITextField!
  
  func setupView() {
    
  }

  func validateSession() {
    let request = Launch.Something.Request()
    interactor?.validateSession(request: request)
  }
  
  func displaySomething(viewModel: Launch.Something.ViewModel) {
    //nameTextField.text = viewModel.name
  }
}
