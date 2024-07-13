//
//  ProfileView.swift
//  Mi Micro
//
//  Created by Ricardo Nieblas on 12/07/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView() {
                HStack(spacing: 20) {
                    Circle()
                        .foregroundStyle(Color(.systemGray5))
                    
                    VStack(alignment: .leading) {
                        Text("Ricardo Nieblas")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("ricardo.nieblas@cetys.edu.mx")
                            .font(.subheadline)
                            .foregroundStyle(Color(.systemGray2))
                    }
                }
                .frame(height: 70)
            }
        }
        .background(.ultraThinMaterial)
    }
}

#Preview {
    ProfileView()
}
