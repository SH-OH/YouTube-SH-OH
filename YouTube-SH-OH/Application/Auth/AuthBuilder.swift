//
//  AuthBuilder.swift
//  YouTube-SH-OH
//
//  Created by Oh Sangho on 2020/09/16.
//  Copyright © 2020 SH-OH. All rights reserved.
//

import RIBs

protocol AuthDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class AuthComponent: Component<AuthDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol AuthBuildable: Buildable {
    func build(withListener listener: AuthListener) -> AuthRouting
}

final class AuthBuilder: Builder<AuthDependency>, AuthBuildable {

    override init(dependency: AuthDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: AuthListener) -> AuthRouting {
        _ = AuthComponent(dependency: dependency)
        let viewController = AuthViewController.storyboard()
        let interactor = AuthInteractor(presenter: viewController)
        interactor.listener = listener
        return AuthRouter(interactor: interactor,
                          viewController: viewController)
    }
}
