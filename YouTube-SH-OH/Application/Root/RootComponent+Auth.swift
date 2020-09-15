//
//  RootComponent+Auth.swift
//  YouTube-SH-OH
//
//  Created by Oh Sangho on 2020/09/16.
//  Copyright © 2020 SH-OH. All rights reserved.
//

import RIBs

/// The dependencies needed from the parent scope of Root to provide for the Auth scope.
// TODO: Update RootDependency protocol to inherit this protocol.
protocol RootDependencyAuth: Dependency {
    // TODO: Declare dependencies needed from the parent scope of Root to provide dependencies
    // for the Auth scope.
}

extension RootComponent: AuthDependency {

    // TODO: Implement properties to provide for Auth scope.
}
