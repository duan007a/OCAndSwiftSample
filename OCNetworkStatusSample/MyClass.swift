//
//  MyClass.swift
//  OCNetworkStatusSample
//
//  Created by huaixu on 2018/6/4.
//  Copyright © 2018年 huaixu. All rights reserved.
//

import Foundation

@objc(MySwiftClass)
open class 我的类: NSObject {
    
    @objc(sayHello)
    public func 打招呼() -> Void {
        MyOCClass.sayHello()
    }
    
    @objc(exchangeInstanceMethod)
    public func 成员方法替换() -> Void {
        let m1 = class_getInstanceMethod(MyOCClass.self, #selector(MyOCClass.originMethod))
        let m2 = class_getInstanceMethod(MyOCClass.self, #selector(MyOCClass.newMethod))
        method_exchangeImplementations(m1, m2)
    }
    
    @objc(exchangeClassMethod)
    public func 类方法替换() -> Void {
        let m1 = class_getClassMethod(MyOCClass.self, #selector(MyOCClass.originClassMethod))
        let m2 = class_getClassMethod(MyOCClass.self, #selector(MyOCClass.newClassMethod))
        method_exchangeImplementations(m1, m2)
    }

    @objc(invokeInstanceMethod)
    public func 实例方法调用() -> Void {
        MyOCClass.init().originMethod()
    }
    
    @objc(invokeClassMethod)
    public func 类方法调用() -> Void {
        MyOCClass.originClassMethod()
    }
}
