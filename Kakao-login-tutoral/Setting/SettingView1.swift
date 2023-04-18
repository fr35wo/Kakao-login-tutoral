

import SwiftUI

struct SettingView1: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            NavigationLink(
                destination: communityRuleView(),
                label: {
                    Text("규정")
                        .frame(width: 260, height: 10)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex: 0x87CEFA))
                        .cornerRadius(50)
                })
            NavigationLink(
                destination: editProfileView(),
                label: {
                    Text("프로필편집")
                        .frame(width: 260, height: 10)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex: 0x87CEFA))
                        .cornerRadius(50)
                })
            NavigationLink(
                destination: ColorSchemeView1(),
                label: {
                    Text("테마별 색상변경")
                        .frame(width: 260, height: 10)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex: 0x87CEFA))
                        .cornerRadius(50)
                })
        }
    }
}

struct SettingView1_Previews: PreviewProvider {
    static var previews: some View {
        SettingView1()
    }
}
