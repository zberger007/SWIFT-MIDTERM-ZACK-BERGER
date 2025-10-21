//
//  DetailView.swift
//  MIDTERM_ZackBerger
//
//  Created by Zack Berger on 10/21/25.
//

import SwiftUI

struct DetailView: View {
    let subject: Subject
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(subject.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(radius: 5)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(subject.name)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Divider()
                    
                    Text(subject.description)
                        .font(.body)
                        .lineSpacing(5)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(subject.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
