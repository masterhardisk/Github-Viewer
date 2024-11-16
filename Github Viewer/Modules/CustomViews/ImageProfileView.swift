//
//  ImageProfileView.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import SwiftUI

struct ImageProfileView: View {
    let avatarUrl: String?
    let width: CGFloat?
    let height: CGFloat?
    
    var body: some View {
            VStack {
                AsyncImage(url: URL(string: avatarUrl ?? "")) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle())
                            .frame(width: width, height: height)
                            .clipShape(Circle())
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipShape(Circle())                       .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .shadow(radius: 6)
                    case .failure:
                        DefaultAvatar(width: width, height: height)
                    @unknown default:
                        DefaultAvatar(width: width, height: height)
                    }
                }
            }
        }
}

#Preview {
    ImageProfileView(avatarUrl: "https://avatars.githubusercontent.com/u/1115337?v=4", width: 200, height: 200)
}
