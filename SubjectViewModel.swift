//
//  SubjectViewModel.swift
//  MIDTERM_ZackBerger
//
//  Created by Zack Berger on 10/21/25.
//

import Foundation
import Combine

class SubjectViewModel: ObservableObject {
    @Published var subjects: [Subject] = []
    
    init() {
        loadData()
    }
    
    func loadData() {
        if let url = Bundle.main.url(forResource: "Data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                subjects = try decoder.decode([Subject].self, from: data)
            } catch {
                print("Error loading JSON: \(error)")
            }
        }
    }
}
