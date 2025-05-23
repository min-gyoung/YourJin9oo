//
//  HelpViewModel.swift
//  YourJin9oo
//
//  Created by 김민경 on 5/23/25.
//

import Foundation

enum Category: String, CaseIterable {
  case all = "전체"
  case design = "디자인"
  case development = "개발"
  case sports = "스포츠"
  
  var displayName: String {
    switch self {
    case .all:
      return "전체"
    default:
      return rawValue
    }
  }
}

// 카테고리 선택
final class GiveHelpModel {
  func handleCategorySelection(_ category: Category) {
    switch category {
    case .all:
      handleAll()
    case .design:
      handleDesign()
    case .development:
      handleDev()
    case .sports:
      handleSports()
    }
  }
  
  private func handleAll() {
    
  }
  
  private func handleDesign() {
    
  }
  
  private func handleDev() {
    
  }
  
  private func handleSports() {
    
  }
}
