

import SwiftUI

struct SettingView1: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            Form{
                Section(header: Text("설정").font(.title)) {
                    NavigationLink(
                        destination: ColorSchemeView1(),
                        label: {
                            Text("테마변경")
                                .frame(width: 260, height: 10)
                        })
                    NavigationLink(
                        destination: ShareView(),
                        label: {
                            Text("일정 공유하기")
                                .frame(width: 260, height: 10)
                        })
                    NavigationLink(
                        destination: setalarmView1(),
                        label: {
                            Text("알림설정")
                                .frame(width: 260, height: 10)
                        })
                    NavigationLink(
                        destination: authView1(),
                        label: {
                            Text("계정관리")
                                .frame(width: 260, height: 10)
                        })

                }.padding(.vertical, 5)
                
            }
        }
    }
}

struct SettingView1_Previews: PreviewProvider {
    static var previews: some View {
        SettingView1()
    }
}
