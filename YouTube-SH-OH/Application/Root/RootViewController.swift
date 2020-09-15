//
//  RootViewController.swift
//  YouTube-SH-OH
//
//  Created by Oh Sangho on 2020/09/15.
//  Copyright © 2020 SH-OH. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol RootPresentableListener: class {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class RootViewController: UIViewController, RootPresentable, RootViewControllable {
    
    weak var listener: RootPresentableListener?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func present(viewController: ViewControllable) {
        self.present(viewController.uiviewController, animated: true, completion: nil)
    }
}
