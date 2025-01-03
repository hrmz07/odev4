//
//  ContentView.swift
//  NavStack2
//
//  Created by Hürmüs Sürücüoğlu on 2.01.2025.
//

import SwiftUI

struct Anasayfa: View {
    @State var showSecondPage: Bool = false
    @State var showXPage: Bool = false
    var body: some View {
        NavigationStack {
            VStack {

                Image("barinak")
                    .resizable()
                    .frame(width: 350, height: 250)
                Button {
                    showSecondPage = true
                } label: {
                    Text("Sayfa A'ya Git -> Kediler")
                        .padding(20)
                        .foregroundStyle(.white)
                        .background(.purple)
                        .cornerRadius(20)
                }
                Button {
                    showXPage = true
                } label: {
                    Text("Sayfa X'e Git -> Köpekler")
                        .padding(20)
                        .foregroundStyle(.white)
                        .background(.purple)
                        .cornerRadius(20)
                }

            }
            .navigationTitle("ANASAYFA")
            .navigationDestination(isPresented: $showSecondPage) {
                SayfaA()
            }
            .navigationDestination(isPresented: $showXPage) {
                SayfaX()
            }
        }
    }
}

#Preview {
    Anasayfa()
}
