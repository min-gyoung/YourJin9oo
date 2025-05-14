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
