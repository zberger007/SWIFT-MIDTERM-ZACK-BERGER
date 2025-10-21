//
//  ContentView.swift
//  Midterm Project
//  Zack Berger
//  October 21, 2025
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = SubjectViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.subjects) { subject in
                NavigationLink(destination: DetailView(subject: subject)) {
                    HStack(spacing: 15) {
                        Image(subject.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 70, height: 70)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Text(subject.name)
                            .font(.headline)
                            .foregroundColor(.primary)
                    }
                    .padding(.vertical, 5)
                }
            }
            .navigationTitle("Weatherwood Stains")
        }
    }
}

#Preview {
    ContentView()
}
