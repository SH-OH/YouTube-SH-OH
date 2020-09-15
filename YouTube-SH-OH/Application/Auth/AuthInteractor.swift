//
//  AuthInteractor.swift
//  YouTube-SH-OH
//
//  Created by Oh Sangho on 2020/09/16.
//  Copyright © 2020 SH-OH. All rights reserved.
//

import RIBs
import RxSwift

protocol AuthRouting: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol AuthPresentable: Presentable {
    var listener: AuthPresentableListener? { get set }
    // TODO: Declare methods the interactor can invoke the presenter to present data.
}

protocol AuthListener: class {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class AuthInteractor: PresentableInteractor<AuthPresentable>, AuthInteractable, AuthPresentableListener {

    weak var router: AuthRouting?
    weak var listener: AuthListener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: AuthPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
}
