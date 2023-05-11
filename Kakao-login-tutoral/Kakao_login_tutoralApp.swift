
import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth


@main
struct Kakao_login_tutoralApp: App {
    
    init() {
        @UIApplicationDelegateAdaptor var appDelegate : MyAppDelegate
        
        let kakaoappkey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
//        // Kakao SDK 초기화
        KakaoSDK.initSDK(appKey: kakaoappkey as! String)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
