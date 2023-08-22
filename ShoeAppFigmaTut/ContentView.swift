//
//  ContentView.swift
//  ShoeAppFigmaTut
//
//  Created by Ahmed Gagan on 22/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        TabView {
            NavigationStack {
                ScrollView {
                    VStack {
                        Text("Top Brands")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 28))
                            .padding(.leading, 20)
                        HStack {
                            Spacer()
                                .frame(width: 20)
                            Image("image6")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(red: 214/255, green: 214/255, blue: 214/255))
                                )
                            Spacer()
                            Image("image7")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(red: 214/255, green: 214/255, blue: 214/255))
                                )
                            Spacer()
                            Image("image8")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(red: 214/255, green: 214/255, blue: 214/255))
                                )
                            Spacer()
                            Image("image9")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(red: 214/255, green: 214/255, blue: 214/255))
                                )
                            Spacer()
                        }
                        Text("Top Brands")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 28))
                            .padding(.leading, 20)
                        HStack {
                            VStack {
                                ShoeCard(shoeImage: "image3", companyImage: "image6", shoePrice: "239.80", shoeName: "Nike Air Max 90")
                                ShoeCard(shoeImage: "image4", companyImage: "image7", shoePrice: "85.80", shoeName: "Nike Air Max 90")
                            }
                            VStack {
                                Spacer()
                                    .frame(height: 40)
                                ShoeCard(shoeImage: "image5", companyImage: "image8", shoePrice: "239.80", shoeName: "Nike Air Max 90")
                                ShoeCard(shoeImage: "image3", companyImage: "image6", shoePrice: "85.80", shoeName: "Nike Air Max 90")
                            }
                        }
                    }.ignoresSafeArea().navigationBarTitle("Sneakers")
                        .navigationBarItems(trailing: Image(systemName: "bell.fill")
                            .resizable().scaledToFit().frame(width: 30, height: 30).opacity(0.3))
                }
            }.searchable(text: $searchText)
                .tabItem() {
                    Image(systemName: "house.fill")
                }
            Text("Likes")
                .tabItem() {
                    Image(systemName: "heart.fill")
                }
            Text("Cart")
                .tabItem() {
                    Image(systemName: "cart.fill")
                }
            Text("Account")
                .tabItem() {
                    Image(systemName: "person.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
