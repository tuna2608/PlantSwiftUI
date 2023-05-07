//
//  HomeScreen1View.swift
//  PlantApp
//
//  Created by Anh Tú on 07/05/2023.
//

import SwiftUI

struct HomeScreen1View: View {
    var body: some View {
        ZStack{
            Color("bg_color").ignoresSafeArea()
            VStack{
                HeaderView()
                CategoriesView()
                SectionTitleView(title: "Recommended")
                
                RecommendPlantView()
            }
            .padding()
            
            
        }
    }
}

struct HomeScreen1View_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen1View()
    }
}

struct RecommendPlantView: View {
    var body: some View {
        VStack(alignment: .leading){
            ZStack(alignment: .topTrailing){
                Image("bg_right")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                Image("tree_one")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            VStack(alignment: .leading){
                Text("Oscar plant")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Primary"))
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                    Text("4.8")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Primary").opacity(0.5))
                }
                HStack {
                    Text("$"+"150")
                        .foregroundColor(Color("Secondary"))
                        .fontWeight(.bold)
                        .font(.title2)
                    Spacer()
                    Image(systemName: "plus")
                        .padding(.all,8)
                        .background(Color("Primary"))
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                        .onTapGesture{
                            
                        }
                }
                
            }
            .padding()
        }
        .background(Color.white)
        .frame(width: 200)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.1), radius: 16,x: 16,y: 16)
    }
}
