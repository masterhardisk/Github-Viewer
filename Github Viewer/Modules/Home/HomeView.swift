//
//  HomeView.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//

import SwiftUI

struct HomeView: View {
    @State var homeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Text("GitHub Viewer")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
                    .padding(.bottom, 40)
                
                Spacer()
                
                HStack {
                    Image(systemName: "person.crop.circle.fill")
                        .foregroundColor(.secondary)
                        .padding(.leading, 10)
                    
                    TextField("Enter GitHub Username", text: $homeViewModel.textField)
                        .padding(.horizontal)
                        .padding(.vertical, 12)
                        .background(.secondary.opacity(0.1))
                        .cornerRadius(10)
                        .foregroundColor(.primary)
                        .font(.body)
                        .textFieldStyle(PlainTextFieldStyle())
                        .autocorrectionDisabled()
                }
                .background(.background)
                .cornerRadius(10)
                .shadow(radius: 5)
                
                Spacer()
                
                Button("Search") {
                    Task{
                        await homeViewModel.fetchInfoBy(homeViewModel.textField)
                    }
                }
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
                .font(.headline)
                .padding()
                
                Spacer()
            }
            .padding()
            .alert("Error", isPresented: $homeViewModel.errorShow) { }
            message: {
                Text(homeViewModel.errorMessage)
            }.navigationDestination(isPresented: $homeViewModel.navigateToProfile) {
                ProfileView(user: homeViewModel.user)
            }
        }
    }
}

#Preview {
    HomeView()
}
