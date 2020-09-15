//
//  MainViewController.swift
//  YouTube-SH-OH
//
//  Created by Oh Sangho on 2020/09/16.
//  Copyright © 2020 SH-OH. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol MainPresentableListener: class {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class MainViewController: UIViewController, MainPresentable, MainViewControllable {

    weak var listener: MainPresentableListener?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
}
