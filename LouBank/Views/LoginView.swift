//
//  LoginView.swift
//  LouBank
//
//  Created by Tarlan on 23.02.22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer(minLength: 172)
                Image("logo")
                Spacer(minLength: 172)

                Button {
                } label: {
                    Text("Log in")
                        .font(.callout)
                        .fontWeight(.medium)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 48)
                        .foregroundColor(textColor)
                }
                .background(buttonAccentGradientColor)
                .cornerRadius(38)
                .padding(.all, 4)

                Button {
                } label: {
                    Text("Become a client of the bank")
                        .font(.callout)
                        .fontWeight(.medium)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 48)
                        .foregroundColor(.white)
                }
                .background(buttonBlackColor)
                .cornerRadius(38)
                .padding(.all, 4)

                Spacer()
                Spacer()
            }
            .padding(.horizontal, 24)

            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 72, height: 21)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(mintColor)
                            .opacity(0.07)
                        Image("more-vertical")
                            .foregroundColor(.white)
                    }
                    .frame(width: 32, height: 32)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .foregroundColor(.white)
            .background(backgroundColor)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
