//
//  CreatePostView.swift
//  YourJin9oo
//
//  Created by JiJooMaeng on 5/16/25.
//

import SwiftUI

struct CreatePostView: View {
    @State private var selectedCategory: String? = nil
    @State private var title: String = ""
    @State private var content: String = ""
    
    let categories = ["스포츠", "맛집", "생활", "건강", "취미", "배움"]
    
    let columns = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 18) {
                Text("어떤 분야의 문제인가요?")
                    .font(.headline)
                    .padding(.top, 26)
                    .padding(.bottom, 2)
                
                LazyVGrid(columns: columns, spacing: 12) {
                    ForEach(categories, id: \.self) { category in
                        Button(action: {
                            selectedCategory = category
                        }) {
                            Text(category)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(selectedCategory == category ? Color.gray.opacity(0.4) : Color.gray.opacity(0.2))
                                .foregroundColor(.black)
                                .cornerRadius(5)
                        }
                    }
                }
                .padding(.bottom, 10)
                
                TextField("글 제목을 작성해주세요.", text: $title)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5)
                
                TextField("내용을 작성해주세요.", text: $content, axis: .vertical)
                    .lineLimit(6...15)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5)
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Text("작성 완료")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color.red.opacity(0.9)) //FF7866로 수정 필요
                        .cornerRadius(16)
                }
            }
            .padding()
            .navigationTitle("도움 요청")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CreatePostView()
}
