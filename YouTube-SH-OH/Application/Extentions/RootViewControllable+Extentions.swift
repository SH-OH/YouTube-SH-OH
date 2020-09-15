//
//  RootViewControllable+Extentions.swift
//  YouTube-SH-OH
//
//  Created by Oh Sangho on 2020/09/16.
//  Copyright © 2020 SH-OH. All rights reserved.
//

import RIBs
import UIKit.UIStoryboard

extension ViewControllable {
    static func storyboard() -> Self {
        let name: String = "\(self)"
        guard let vc = UIStoryboard(name: name, bundle: .main)
            .instantiateViewController(withIdentifier: name) as? Self else {
                preconditionFailure("Storyboard \(name) init 실패")
        }
        return vc
    }
}
