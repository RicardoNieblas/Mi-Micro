//
//  ContentView.swift
//  Mi Micro
//
//  Created by Ricardo Nieblas on 07/07/24.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let cetys_tj = CLLocationCoordinate2D(
        latitude: 32.50525752111835,
        longitude: -116.92456976673344)
}

extension MKCoordinateRegion {
    static let defaultRegion = MKCoordinateRegion(
        center: .cetys_tj,
        span: MKCoordinateSpan(
            latitudeDelta: 0.035,
            longitudeDelta: 0.035))
}

/*
Annotation("CETYS", coordinate: .cetys_tj, anchor: .bottom) {
    Image(systemName: "graduationcap")
        .padding(8)
        .foregroundStyle(.black)
        .background(Color.yellow)
        .clipShape(Circle())
*/

struct ContentView: View {
    @State private var routesButton: Bool = false
    @State private var profileButton: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                // missing to make this show the user's location
                Map() {
                    
                }
                .mapStyle(.standard(elevation: .realistic))
                .safeAreaInset(edge: .bottom) {
                    // would be ideal if all this is handled by MenuView()
                    // that way the background stays active,
                    // and the app overall feels more polished
                    // it should just expand the safeAreaInset
                    // not create a whole new sheet view
                    MenuView(routesButton: $routesButton,
                             profileButton: $profileButton)
                        .sheet(isPresented: $profileButton, content: {
                            ProfileView()
                                .presentationDetents([.medium,.large])
                        })
                        .sheet(isPresented: $routesButton, content: {
                            RoutesView()
                                .presentationDetents([.medium,.large])
                        })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
