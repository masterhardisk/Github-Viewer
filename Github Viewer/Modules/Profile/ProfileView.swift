//
//  ProfileView.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import SwiftUI

struct ProfileView: View {
    @State var profileViewModel = ProfileViewModel()
    let user: User?
    
    var body: some View {
        VStack(alignment: .center, spacing: 16)  {
            ImageProfileView(avatarUrl: user?.avatarUrl, width: 120, height: 120)
               
            VStack(alignment: .center, spacing: 4) {
                Text(user?.name ?? "")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text("(\(user?.username ?? ""))")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            HStack(spacing: 12) {
                Image(systemName: "location.north.circle.fill")
                    .foregroundColor(.accentColor)
                
                Text(user?.location ?? "Location not available")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding(.top, 12)
        }
        .padding()
            Spacer()
            RepoCell(repos: profileViewModel.repos)
        
        .task {
            await profileViewModel.fetchRepos(for: user?.username)
        }.alert("Error", isPresented: $profileViewModel.errorShow) { }
        message: {
            Text(profileViewModel.errorMessage)
        }
    }
    
}
#Preview {
    ProfileView(user: .test)
}
