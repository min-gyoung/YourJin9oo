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
            VStack(alignment: .leading, spacing: 0) {
                Text("마이페이지")
                    .font(.system(size: 28, weight: .medium))
                    .foregroundStyle(Color("MainTextColor"))
                    .padding(.horizontal, 16)
                    .padding(.top, 55)
                    .padding(.bottom, 28)
                
                MyPageButton(title: "감사편지 모아보기", frameheight: 63)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("MyPageColor"))
                    )
                    .padding(.horizontal, 16)
                    .padding(.bottom, 24)
                
                VStack(spacing: 0) {
                    MyPageButton(title: "관심분야 수정")
                    Divider()
                    MyPageButton(title: "약관과 방침")
                    Divider()
                    MyPageButton(title: "만든 사람들")
                }
                .frame(height: 180)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("MyPageColor"))
                )
                .padding(.horizontal, 16)
                .padding(.bottom, 24)
                
                VStack(spacing: 0) {
                    MyPageButton(title: "로그아웃", color: Color("RedColor"))
                    Divider()
                    MyPageButton(title: "회원탈퇴", frameheight: 60, color: Color("RedColor"))
                }
                .frame(height: 121)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("MyPageColor"))
                )
                .padding(.horizontal, 16)
                
                Spacer()
                
            }
        }
    }
}




struct MyPageButton: View {
    let title: String
    var frameheight: Int = 60
    var color: Color = Color("MainTextColor")
    
    
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
            .frame(height: CGFloat(frameheight))
        }
    }
}




#Preview {
    NavigationView{
        MyPageView()
    }
}
