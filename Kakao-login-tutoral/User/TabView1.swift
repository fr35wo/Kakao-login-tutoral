import SwiftUI

struct TabView1: View {
    
    @State private var selection = 1
    
    init(){
            //TabView 배경색 설정(파란색)
        UITabBar.appearance().backgroundColor
            = UIColor(Color(hex: 0x193B8A))
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        }
    
    var body: some View {
        TabView(selection: $selection) {
            Group {
                CalenderView1()
                    .tabItem {
                        Image(systemName: "doc.plaintext")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                    .tag(1)
                
                ChartView()
                    .tabItem {
                        Image(systemName: "calendar")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                    .tag(2)
                
                SettingView1()
                    .tabItem {
                        Image(systemName: "gearshape")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                    .tag(3)
            }
        }

        .accentColor(.white)
        .navigationBarHidden(true)
        
    }
}

struct TabbarView1_Previews: PreviewProvider {
    static var previews: some View {
        TabView1()
    }
}
