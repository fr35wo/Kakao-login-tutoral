//
//  KakaoAuthVM.swift
//  Kakao-login-tutoral
//
//  Created by 봉주헌 on 2023/04/18.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser

class KakaoAuthVM : ObservableObject {
    
    func hanlekakaoLogin() {
        // 카카오톡 실행 가능 여부 확인 - 카카오 앱이 설치가 되어 있을 때
        if (UserApi.isKakaoTalkLoginAvailable()) {
            
            //카카오 앱을 통해 로그인
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                    //do something
                    _ = oauthToken
                }
            }
        }else {
            
        }
    }
    
}
// MARK: - 카카오톡 로그아웃
    func handleKakaoLogout() {
        UserApi.shared.logout {(error) in
            if let error = error {
                print(error)
            }
            else {
                print("logout() success.")
            }
        }
    }
