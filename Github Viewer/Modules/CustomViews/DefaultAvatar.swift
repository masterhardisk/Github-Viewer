//
//  DefaultAvatar.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//

import SwiftUI

struct DefaultAvatar: View {
    let width: CGFloat?
    let height: CGFloat?
    
    var body: some View {
        Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: height)
                    .clipShape(Circle())
                    .foregroundColor(.gray)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 6)
    }
}

#Preview {
    DefaultAvatar(width: 200, height: 200)
}
