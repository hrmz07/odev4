//
//  SayfaA.swift
//  NavStack2
//
//  Created by Hürmüs Sürücüoğlu on 2.01.2025.
//

import SwiftUI

struct SayfaA: View {
    @State var showSecondPage: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                Image("KediA")
                    .resizable()
                    .padding(30)
                Button {
                    showSecondPage = true
                } label: {
                    Text("Sayfa B'ye Git")
                        .padding(20)
                        .foregroundStyle(.white)
                        .background(.green)
                        .cornerRadius(20)
                }
            }.navigationTitle("SAYFA A")
                .navigationDestination(isPresented: $showSecondPage) {
                    SayfaB()
                }
        }

    }
}
        


#Preview {
    SayfaA()
}
