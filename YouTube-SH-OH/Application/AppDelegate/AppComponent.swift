//
//  AppComponent.swift
//  YouTube-SH-OH
//
//  Created by Oh Sangho on 2020/09/15.
//  Copyright © 2020 SH-OH. All rights reserved.
//

import RIBs

final class AppComponent: Component<EmptyDependency>, RootDependency {
    init() {
        super.init(dependency: EmptyComponent())
    }
}
