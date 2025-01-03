//
//  SayfaB.swift
//  NavStack2
//
//  Created by Hürmüs Sürücüoğlu on 2.01.2025.
//

import SwiftUI

struct SayfaB: View {
    @State var showSecondPage: Bool = false
    var body: some View {
        VStack {
            Image("KediB")
                .resizable()
                .padding(30)
            Button {
                showSecondPage = true
            } label: {
                Text("Sayfa Y'ye Git -> Son Köpek")
                    .padding(20)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .cornerRadius(20)
            }
        }.navigationTitle("SAYFA B")
            .navigationDestination(isPresented: $showSecondPage) {
                SayfaY()
            }

    }
}

#Preview {
    SayfaB()
}
