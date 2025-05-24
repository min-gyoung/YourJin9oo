//
//  CreatePostView.swift
//  YourJin9oo
//
//  Created by JiJooMaeng on 5/16/25.
//

import SwiftUI

struct CreatePostView: View {
    @State private var selectedCategory: Category? = nil
    @State private var title: String = ""
    @State private var content: String = ""
    
    let categories: [Category] = [
        Category(name: "스포츠", iconName: "dumbbell.fill"),
        Category(name: "맛집", iconName: "birthday.cake.fill"),
        Category(name: "생활", iconName: "leaf.fill"),
        Category(name: "건강", iconName: "heart.fill"),
        Category(name: "취미", iconName: "music.note"),
        Category(name: "배움", iconName: "books.vertical.fill")
    ]
    
    let columns = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 18) {
                Text("어떤 분야의 문제인가요?")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(Color("DetailTextColor"))
                    .padding(.top, 8)
                    .padding(.bottom, 2)
                
                LazyVGrid(columns: columns, spacing: 13) {
                    ForEach(categories) { category in
                        Button {
                            selectedCategory = category
                        } label: {
                            Label(category.name, systemImage: category.iconName)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(selectedCategory == category ? Color("SelectedCategoryColor") : Color("UnselectedCategoryColor"))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .padding(.bottom, 0)
                    }
                }
                .padding(.horizontal, 2)
                
                
                TextField("글 제목을 작성해주세요.", text: $title)
                    .padding()
                    .foregroundStyle(Color("DetailTextColor"))
                    .background(Color("TextFieldColor"))
                    .cornerRadius(5)
                
                TextField("내용을 작성해주세요.", text: $content, axis: .vertical)
                    .lineLimit(6...15)
                    .padding()
                    .foregroundStyle(Color("DetailTextColor"))
                    .background(Color("TextFieldColor"))
                    .cornerRadius(5)
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Text("작성 완료")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color("AccentColor"))
                        .cornerRadius(16)
                        .padding(.horizontal, 2)
                }
            }
            .padding(16)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("도움 요청")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundStyle(Color("SubTextColor"))
                }
            }
        }
    }
}

struct Category: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let iconName: String
}

#Preview {
    CreatePostView()
}
