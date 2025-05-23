//
//  InterestSelectionView.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/15/25.
//

import SwiftUI

public struct InterestSelectionView: View {
    let interestList = ["스포츠", "맛집", "생활", "배움", "취미", "건강"]
    
    public var body: some View {
        Text("당신의 관심분야는 뭔가요?")
            .font(.system(size: 24))
            .fontWeight(.bold)
//            .foregroundColor(Color(hex: "#666666"))
            .padding(.bottom, 10)
            .padding(.top, 100)
        
        Text("다른 사람에게 도움 줄 수 있는\n분야를 골라주세요.")
            .font(.system(size: 14))
//            .foregroundColor(Color(hex: "#666666"))
            .multilineTextAlignment(.center)
        
        Spacer()
        
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: -60), count: 2), spacing: 15) {
            ForEach(interestList, id: \.self) { interest in
                Button(action: {
                    print("\(interest)")
                } ) {
                    VStack {
                        RoundedRectangle (cornerRadius: 16)
//                            .fill(Color(hex: "#D9D9D9"))
                            .frame(width: 150, height: 150)
                            .overlay(
                                Text(interest)
                                    .foregroundColor(.black)
                            )
                    }
                }
            }
        }
        Spacer()
    }
}

#Preview {
    InterestSelectionView()
}
