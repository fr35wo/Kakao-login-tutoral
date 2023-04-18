//
//  MySceneDelegate.swift
//  Kakao-login-tutoral
//
//  Created by 봉주헌 on 2023/04/18.
//
import Foundation
import KakaoSDKAuth
import UIKit

class MySceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let url = URLContexts.first?.url {
            if (AuthApi.isKakaoTalkLoginUrl(url)) {
                _ = AuthController.handleOpenUrl(url: url)
            }
        }
    }
}
