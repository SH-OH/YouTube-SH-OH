//
//  AuthRouter.swift
//  YouTube-SH-OH
//
//  Created by Oh Sangho on 2020/09/16.
//  Copyright © 2020 SH-OH. All rights reserved.
//

import RIBs

protocol AuthInteractable: Interactable {
    var router: AuthRouting? { get set }
    var listener: AuthListener? { get set }
}

protocol AuthViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class AuthRouter: ViewableRouter<AuthInteractable, AuthViewControllable>, AuthRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: AuthInteractable, viewController: AuthViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
