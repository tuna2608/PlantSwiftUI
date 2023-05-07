//
//  HeaderView.swift
//  PlantApp
//
//  Created by Anh Tú on 26/04/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Exclusive Plants")
                    .fontWeight(.semibold)
                    .font(.title)
                Text("For your hobby")
                    .fontWeight(.light)
                    .font(.title)
            }
            .foregroundColor(Color("Primary"))
            
            Spacer()
            Image("avt")
                .resizable()
                .frame(width: 70,height: 70)
                .cornerRadius(20)
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
