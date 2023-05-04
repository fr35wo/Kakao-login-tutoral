//
//  editProView.swift
//  Kakao-login-tutoral
//
//  Created by 봉주헌 on 2023/04/28.
//

import SwiftUI

struct editProView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    var body: some View {
        VStack{
            Text("개인정보 설정")
                .font(.title2)
                .padding([.top, .bottom])
            Form{
                TextField("이름 ", text: $name)
                    .padding()
                    .frame(width: 280, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                TextField("이메일 ", text: $email)
                    .padding()
                    .frame(width: 280, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                TextField("전화번호", text: $phoneNumber)
                    .padding()
                    .frame(width: 280, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("저장")
                        .frame(width: 250, height: 10)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex: 0x193B8A))
                        .cornerRadius(10)
                })
            }
        }
    }
}

struct editProView_Previews: PreviewProvider {
    static var previews: some View {
        editProView()
    }
}
