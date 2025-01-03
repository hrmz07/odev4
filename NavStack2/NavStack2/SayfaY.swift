//
//  SayfaY.swift
//  NavStack2
//
//  Created by Hürmüs Sürücüoğlu on 2.01.2025.
//

import SwiftUI

struct SayfaY: View {

    @State var showHomePage: Bool = false
    var body: some View {
        VStack {
            Image("KopekY")
                .resizable()
                .padding(30)
            Button {
                showHomePage = true
            } label: {
                Text("Anasayfa'ya Git")
                    .padding(20)
                    .foregroundStyle(.white)
                    .background(.gray)
                    .cornerRadius(20)
            }
        }.navigationTitle("SAYFA Y")
            .navigationDestination(isPresented: $showHomePage) {
                Anasayfa()
            }
    }
}

#Preview {
    SayfaY()
}
