//
//  authView.swift
//  TodoList
//
//  Created by 봉주헌 on 2023/04/03.
//

import SwiftUI

struct authView1: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State var isEditingModalPresented: Bool = false
    
    var body: some View {
        VStack{
            Text("봉주헌 님")
                .font(.title2)
                .padding([.top, .bottom])
            Text("ipo5069@naver.com")
                .font(.caption)
            Form{
                Button(action: {
                    isEditingModalPresented = true
                }) {
                    Text("정보 수정하기")
                }
                .sheet(isPresented: $isEditingModalPresented) {
                    editProView()
                }
                Button(action: {
                    
                }, label: {
                    Text("암호수정하기")
                })
            }
        }
    }
}

struct authView1_Previews: PreviewProvider {
    static var previews: some View {
        authView1()
    }
}
