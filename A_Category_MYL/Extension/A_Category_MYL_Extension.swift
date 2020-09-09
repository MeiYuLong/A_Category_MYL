//
//  BPage_Extension.swift
//
//  Created by casa on 2020/2/21.
//  Copyright © 2020 casa. All rights reserved.
//

import CTMediator

fileprivate let ModuleName = "A_Category_MYL"

public extension CTMediator {
    func A_Category_MYL_demo(name:String, callback:@escaping (String)->Void) -> UIViewController? {
        let params:[AnyHashable:Any] = [
            "name": name,
            "callback": callback,
            kCTMediatorParamsKeySwiftTargetModuleName: ModuleName
        ]
        if let viewController = performTarget(ModuleName, action: "demo", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
    
    func A_Category_MYL_demo_2(name:String, callback:@escaping (String)->Void) -> UIViewController? {
        let params:[AnyHashable:Any] = [
            "name": name,
            "callback": callback,
            kCTMediatorParamsKeySwiftTargetModuleName: ModuleName
        ]
        if let viewController = performTarget(ModuleName, action: "demo_2", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
    
    func A_Category_MYL_showViewController(name:String, callback:@escaping (String)->Void) -> UIViewController? {
        let params:[AnyHashable:Any] = [
            "name": name,
            "callback": callback,
            kCTMediatorParamsKeySwiftTargetModuleName: ModuleName
        ]
        if let viewController = performTarget(ModuleName, action: "showViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}
