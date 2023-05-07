//
//  WelcomeScreenView.swift
//  PlantApp
//
//  Created by Anh Tú on 26/04/2023.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        ZStack{
            Image("img_background")
                .resizable()
                .overlay(LinearGradient(colors: [Color.black.opacity(0.15),Color.black.opacity(0.75)], startPoint: .topLeading, endPoint: .bottomLeading))
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 200).padding(.all,-30)
                
                Spacer()
                Spacer()
                Spacer()
                
                Text("Make your")
                    .font(.title).fontWeight(.light).foregroundColor(Color.white)
                Text("Greener House")
                    .font(.title).fontWeight(.semibold).foregroundColor(Color.white)
                Text("Decorate your house to make \nit look greener").padding(.vertical,8).foregroundColor(Color.white.opacity(0.7))
                
                Spacer()
                
                HStack{
                    Spacer()
                    NextBTN()
                }
                
                Spacer().frame(height: 30)
            }.padding()
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        WelcomeScreenView()
//    }
//}

struct NextBTN: View {
    @State private var chuyenView = false
    
    var body: some View {
        Button (action: {
            self.chuyenView = true
        }) {
            HStack{
                Text("Next")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                Image(systemName: "chevron.forward")
                
            }
            .foregroundColor(Color("Primary"))
            .padding()
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(50)
        }.sheet(isPresented: $chuyenView, content: {
            HomeScreenView()
        })
        
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
