//
//  ShoeCard.swift
//  ShoeAppFigmaTut
//
//  Created by Ahmed Gagan on 22/08/23.
//

import SwiftUI

struct ShoeCard: View {
    
    var shoeImage: String
    var companyImage: String
    var shoePrice: String
    var shoeName: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 214/255, green: 214/255, blue: 214/255))
                    .frame(width: 150, height: 150)
                Image(shoeImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding(.all, 10)
                    .offset(y: -15)
                Image(companyImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .offset(x: 50, y: 50)
            }
            Text("$\(shoePrice)")
                .fontWeight(.bold)
                .frame(maxWidth: 150, alignment: .leading)
            Text("$\(shoeName)")
                .fontWeight(.bold)
                .opacity(0.3)
                .frame(maxWidth: 150, alignment: .leading)
        }
    }
}

struct ShoeCard_Previews: PreviewProvider {
    static var previews: some View {
        ShoeCard(shoeImage: "", companyImage: "", shoePrice: "", shoeName: "")
    }
}
