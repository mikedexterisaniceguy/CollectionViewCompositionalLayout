//
//  MockData.swift
//  CollectionViewCompositionalLayout
//
//  Created by 123 on 14.11.22.
//

import Foundation

// данные, которые будут показываться на вью. Для примера тут только картинки.

struct MockData {
    
    // Реализуем синглтон
    static let shared = MockData()
    
    // Инициализируем массив объектов каждой секции по кейсу энама.
    private let sales: ListSection = {
        .sales([.init(title: "", image: "1"),
                .init(title: "", image: "2"),
                .init(title: "", image: "3")])
    }()
    
    private let category: ListSection = {
        .category([.init(title: "Burger", image: "1"),
                    .init(title: "Burger", image: "1"),
                    .init(title: "Burger", image: "1"),
                    .init(title: "Burger", image: "1"),
                    .init(title: "Burger", image: "1"),
                    .init(title: "Burger", image: "1")
                  ])
    }()
    
    private let exapmles: ListSection = {
        .exapmles([.init(title: "Burger", image: "1"),
                  .init(title: "Burger", image: "1"),
                  .init(title: "Burger", image: "1")
                ])
    }()
    
    // секции, которые будут показываться. Их описание будет выше.
    var pageData: [ListSection] {
        [sales, category, exapmles]
    }
}
