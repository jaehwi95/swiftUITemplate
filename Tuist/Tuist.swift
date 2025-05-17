//
//  Tuist.swift
//  
//
//  Created by Jaehwi Kim on 5/17/25.
//

import ProjectDescription

let config = Config(
    project: .tuist(
        // 통일된 개발 환경을 위해 고정
        compatibleXcodeVersions: ["16.3"],
        swiftVersion: "6.0",
        
        // 플러그인 경로 등록
        plugins: [
            .local(path: "Plugins/ModulePlugin")
        ],
        
        // 프로젝트 생성 시 설정 (tuist generate)
        generationOptions: .options(
            resolveDependenciesWithSystemScm: true, // 시스템 git 사용
            disablePackageVersionLocking: false, // 버전 고정 (Tuist/Package.resolved 생성)
            staticSideEffectsWarningTargets: .all, // 사이드이펙트 경고 전체 적용
            defaultConfiguration: "Debug", // 기본 설정 이름 명시
            optionalAuthentication: true, // 인증 없이도 동작 (사내 Git 등)
            buildInsightsDisabled: true // 빌드 인사이트 비활성화 (CI 최적화)
        )
    )
)
