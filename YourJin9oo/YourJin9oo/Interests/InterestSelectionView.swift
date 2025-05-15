//
//  InterestSelectionView.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/15/25.
//

import SwiftUI

public struct InterestSelectionView: View {
    public var body: some View {
        Text("당신의 관심분야는 뭔가요?")
            .font(.system(size: 24))
            .fontWeight(.bold)
            .foregroundColor(Color(hex: "#666666"))
            .padding(.bottom, 10)
            .padding(.top, 100)
        
        Text("다른 사람에게 도움 줄 수 있는\n분야를 골라주세요.")
            .font(.system(size: 14))
            .foregroundColor(Color(hex: "#666666"))
            .multilineTextAlignment(.center)
        
        Spacer()
        Button(action: {
            // 누르면 버튼이 사라져야 함
        } ) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.clear)
                    .stroke(Color(hex: "#666666"))
                    .frame(width: 90, height: 30)
                
                HStack{
                    Text("스포츠")
                        .font(.system(size: 16))
                        .foregroundColor(Color(hex: "#666666"))
                    
                    Image(systemName: "xmark")
                        .font(.system(size: 14))
                        .foregroundColor(Color(hex: "#666666"))
                }
                
            }
        }
        Spacer()
    }
}

#Preview {
    InterestSelectionView()
}
