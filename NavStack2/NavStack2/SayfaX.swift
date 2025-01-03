//
//  SayfaX.swift
//  NavStack2
//
//  Created by Hürmüs Sürücüoğlu on 2.01.2025.
//

import SwiftUI

struct SayfaX: View {
    @State var showSecondPage: Bool = false
    var body: some View {
        VStack {
            Image("Kopek")
                .resizable()
                .padding(30)
                
            Button {
                showSecondPage = true
            } label: {
                Text("Sayfa Y'ye Git")
                    .padding(20)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .cornerRadius(20)
            }
        }.navigationTitle("SAYFA X")
            .navigationDestination(isPresented: $showSecondPage) {
                SayfaY()
            }
    }
}

#Preview {
    SayfaX()
}
