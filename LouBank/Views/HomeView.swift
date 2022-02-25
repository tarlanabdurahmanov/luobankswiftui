//
//  HomeView.swift
//  LouBank
//
//  Created by Tarlan on 23.02.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Your balance").font(.custom("", size: 15))
                        Text("$ 7,896").font(.title).fontWeight(.bold)
                    }
                    Spacer()
                    Button {
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 14, height: 14)
                            .overlay(
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                                    RoundedRectangle(cornerRadius: 20)
                                        .strokeBorder(buttonBlackColor)
                                }
                                .frame(width: 32, height: 32)
                                .opacity(0.07)
                            )
                    }
                }
                .padding(.leading, 20)
                .padding(.trailing, 30)

                VisaCardSection()
                FinanceSection()

                Spacer()

            }.toolbar {
                ToolbarItem(placement: .principal) {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 72, height: 21)
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("avatar")
                        .foregroundColor(.white)
                        .frame(width: 32, height: 32)
                }
            }
            .padding(.top, 44 + 24)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .foregroundColor(.white)
            .background(backgroundColor)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct VisaCardSection: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(visaCards, id: \.id) { card in

                    VStack(alignment: .leading, spacing: 0) {
                        Image("visa")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 20)
                            .padding(.bottom, 30)

                        Text(card.title)
                            .font(.system(size: 11, weight: .medium))

                        Text(card.price).font(.system(size: 17, weight: .bold))
                        Text(card.code)
                            .font(.system(size: 11, weight: .medium))
                            .padding(.top, 26)
                    }

                    .foregroundColor(.black)
                    .padding(.top, 24)
                    .padding(.leading, 16)
                    .padding(.bottom, 20)
                    .frame(width: 148, height: 170, alignment: .leading)
                    .background(card.color)

                    .cornerRadius(30)
                }

            }.padding(.leading, 20)
        }
    }
}

struct FinanceSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("FINANCE")
                .font(.caption2)
                .padding(.bottom, 12)
                .padding(.leading, 20)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(financeCards, id: \.id) { card in

                        VStack(alignment: .leading, spacing: 0) {
                            Image(card.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .padding(.all, 9)
                                .background(Color(hex: card.color))
                                .cornerRadius(10)

                            Text(card.title)
                                .font(.system(size: 11, weight: .medium))
                                .padding(.top, 18)
                        }
                        .padding(.zero)
                        .frame(width: 100, height: 100)
                        .padding(.horizontal, 4)
                        .padding(.vertical, 4)
                        .background(financeCardBackgroundColor)
                        .cornerRadius(26)
                    }

                }.padding(.leading, 20)
            }
        }
        .padding(.top, 20)
    }
}

struct FinanceCard {
    let id = UUID()
    let image: String
    let title: String
    let color: String
}

let financeCards = [
    FinanceCard(image: "star", title: "My bonuses", color: "F2FE8D"),
    FinanceCard(image: "wallet", title: "My budget", color: "B2D0CE"),
    FinanceCard(image: "statistic", title: "Finance analysis", color: "AA9EB7"),
    FinanceCard(image: "star", title: "My budget", color: "B2D0CE"),
]

struct VisaCard {
    let id = UUID()
    let title: String
    let price: String
    let code: String
    let color: LinearGradient
}

let visaCards = [
    VisaCard(title: "Salary", price: "$ 2,230", code: "** 6917", color: visa1Color),
    VisaCard(title: "Savings account", price: "$ 5,566", code: "** 4552", color: visa2Color),
    VisaCard(title: "Savings account", price: "$ 2,230", code: "** 6917", color: visa3Color),
]
