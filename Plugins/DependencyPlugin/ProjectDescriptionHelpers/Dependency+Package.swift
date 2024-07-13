//
//  Dependency+Package.swift
//  DependencyPlugin
//
//  Created by Jaehwi Kim on 7/13/24.
//

import ProjectDescription

public extension TargetDependency {
    static let ComposableArchitecture = TargetDependency.external(name: "ComposableArchitecture")
    static let KakaoSDK = TargetDependency.external(name: "KakaoSDK")
    static let NaverLogin = TargetDependency.external(name: "NaverThirdPartyLogin")
    static let SnapKit = TargetDependency.external(name: "SnapKit")
    static let Lottie = TargetDependency.external(name: "Lottie")
}
