//
//  RepoCell.swift
//  Github Viewer
//
//  Created by MasterHardisk on 16/11/24.
//
import SwiftUI

struct RepoCell: View {
    let repos: [Repo]
    var body: some View {
        List {
            ForEach(repos) { repo in
                HStack {
                    VStack(alignment: .leading) {
                        Text(repo.name)
                            .font(.headline)
                            .foregroundStyle(.primary)
                        Text(repo.language)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    VStack {
                        VStack(alignment: .trailing){
                            Text("Created")
                                .font(.caption2)
                                .foregroundStyle(.secondary)
                            Text(repo.date.toReadableDate)
                                .bold()
                                .font(.caption2)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                    }
                    .padding(.vertical)
                }
            }
        }
    }
}
#Preview {
    RepoCell(repos: [.test])
}
