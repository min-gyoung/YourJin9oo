//
//  MyPageView.swift
//  YourJin9oo
//
//  Created by JiJooMaeng on 5/15/25.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        NavigationStack {
            VStack {
                MyPageButton(title: "감사편지 모아보기")
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(UIColor.systemGray6))
                )
                .padding(.horizontal)
                .padding(.top, 24)
                .padding(.bottom, 24)
                
                VStack(spacing: 0) {
                    MyPageButton(title: "관심분야 수정")
                    Divider()
                    MyPageButton(title: "약관과 방침")
                    Divider()
                    MyPageButton(title: "만든 사람들")
                }
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(UIColor.systemGray6))
                )
                .padding(.horizontal)
                .padding(.bottom, 24)
                
                VStack(spacing: 0) {
                    MyPageButton(title: "로그아웃", color: .red)
                    Divider()
                    MyPageButton(title: "회원탈퇴", color: .red)
                }
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(UIColor.systemGray6))
                )
                .padding(.horizontal)
                
                Spacer()
                
            }
        }
        .navigationTitle("마이페이지")
    }
}




struct MyPageButton: View {
    let title: String
    var color: Color = .black
    
    var body: some View {
        Button {
            print(title)
        } label: {
            HStack {
                Text(title)
                    .foregroundColor(color)
                Spacer()
            }
            .padding(.leading, 28)
            .frame(height: 60)
        }
    }
}



#Preview {
    NavigationView{
        MyPageView()
    }
}
