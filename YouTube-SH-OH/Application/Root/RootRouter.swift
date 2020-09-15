//
//  RootRouter.swift
//  YouTube-SH-OH
//
//  Created by Oh Sangho on 2020/09/15.
//  Copyright © 2020 SH-OH. All rights reserved.
//

import RIBs

protocol RootInteractable: Interactable, AuthListener {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable {
    func present(viewController: ViewControllable)
}

final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable>, RootRouting {

    private let authBuilder: AuthBuildable
    
    init(interactor: RootInteractor,
         viewController: RootViewControllable,
         authBuilder: AuthBuildable) {
        self.authBuilder = authBuilder
        super.init(interactor: interactor,
                   viewController: viewController)
        interactor.router = self
    }
    
    override func didLoad() {
        super.didLoad()
        let auth = authBuilder.build(withListener: self.interactor)
        self.attachChild(auth)
        self.viewController.present(viewController: auth.viewControllable)
    }
}
