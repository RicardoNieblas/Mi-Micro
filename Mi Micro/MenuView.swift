//
//  MenuBar.swift
//  Mi Micro
//
//  Created by Ricardo Nieblas on 12/07/24.
//

import SwiftUI

struct MenuView: View {
    @Binding var routesButton: Bool
    @Binding var profileButton: Bool
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            HStack {
                // Search bar
                HStack(spacing: 0) {
                    Image(systemName: "magnifyingglass")
                        .bold()
                        .offset(x: 10)
                        .foregroundStyle((Color(.systemGray2)))
                    TextField("¿A dónde quieres ir?", text: $searchText)
                        .font(.title2)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 15)
                }
                .background(.ultraThickMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 18))
                
                // Routes button
                Button {
                    routesButton.toggle()
                } label: {
                    ZStack {
                        Image(systemName: "rectangle.grid.2x2.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle((Color(.systemGray2)))
                            .padding(12)
                            .background(.ultraThickMaterial)
                    }
                    .clipShape(Circle())
                }
                
                // Menu button
                Button {
                    profileButton.toggle()
                } label: {
                    ZStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle((Color(.systemGray2)))
                            .padding(10)
                            .background(.ultraThickMaterial)
                    }
                    .clipShape(Circle())
                }
            }
            .frame(height: 40)
        }
        .padding()
        .background(.ultraThinMaterial)
    }
}

#Preview {
    MenuView(
        routesButton: .constant(false),
        profileButton: .constant(false)
    )
}
