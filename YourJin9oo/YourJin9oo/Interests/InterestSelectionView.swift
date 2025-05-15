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

        Text("다른 사람에게 도움 줄 수 있는\n분야를 골라주세요.")
            .font(.system(size: 14))
            .foregroundColor(Color(hex: "#666666"))
            .multilineTextAlignment(.center)
    }
}

#Preview {
    InterestSelectionView()
}
