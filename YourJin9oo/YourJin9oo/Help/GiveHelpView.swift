//
//  GiveHelpView.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/14/25.
//

import SwiftUI

public struct GiveHelpView: View {
    let categories = ["전체", "디자인", "개발", "스포츠"]
    
    public var body: some View {
        VStack {
            Text("도움 주기")
                .font(.system(size: 28, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 16)
                .padding(.top, 20)
            
            HStack {
                ForEach(categories, id: \.self) { category in
                    Button(action:{
                        handleCategorySelection(category)
                    }) {
                        Spacer()
                        
                        Text(category)
                            .font(.system(size: 16))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 34)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .cornerRadius(20)
                    }
                }
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.bottom, 20)
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("TextFieldColor"))
                    .stroke(Color("SelectedTagColor"), lineWidth: 1)
                    .frame(height: 140)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                VStack {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 4)
                                .fill(Color("SelectedTagColor"))
                                .frame(width: 54, height: 20)
                            
                            Text("매칭완")
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                        }
                        .padding(.leading, 40)
                        
                        Text("심심한 사람?")
                            .font(.system(size: 16, weight: .semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 5)
                    }
                    .padding(.bottom, 5)
                    
                    Text("저랑 마크에서 1대1 뜰사람 찾아요\n대신 맨주먹으로 저이기면 특별히 아끼는 ...")
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 40)
                        .padding(.bottom, 3)
                    
                    HStack {
                        Text("1일 전 • 조회 999")
                            .font(.system(size: 16))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("UnselectedTagColor"))                                .frame(width: 60, height: 24)
                            
                            Text("스포츠")
                                .font(.system(size: 14))
                                .foregroundColor(Color("SubTextColor"))
                        }
                        .padding(.trailing, 40)
                    }
                }
            }
            Spacer()
        }
    }
    
    // 카테고리 선택
    private func handleCategorySelection(_ category: String) {
        switch category {
        case "전체":
            handleAll()
        case "디자인":
            handleDesign()
        case "개발":
            handleDev()
        case "스포츠":
            handleSports()
        default:
            handleAll()
        }
    }
    
    // 카테고리 함수 처리
    private func handleAll() {
        
    }
    private func handleDesign() {
        
    }
    private func handleDev() {
        
    }
    private func handleSports() {
        
    }
}


#Preview {
    GiveHelpView()
}
