//
//  CategoriesView.swift
//  PlantApp
//
//  Created by Anh Tú on 27/04/2023.
//

import SwiftUI

var tabs = ["All","Indoor","Outdoor","Garden"]

struct CategoriesView: View {
    @State var selectTab = tabs[0]
    @Namespace var animation
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(tabs,id: \.self){tab in
                    CategoryBtn(selected:$selectTab,animation:  animation, text: tab)
                }
            }.padding(.vertical, 24)
        }
    }
}

// added animation
struct CategoryBtn: View {
    @Binding var selected: String
    var animation: Namespace.ID
    var text: String
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selected = text
            }
        }){
            Text(text)
                .fontWeight(.medium)
                .padding()
                .padding(.horizontal)
                .background(ZStack{
                    if (selected == text){
                        Color("Primary")
                            .cornerRadius(15)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                })
                .foregroundColor(
                    selected == text ? .white : Color("Primary")
                )
                
                .shadow(color: Color.black.opacity(0.15), radius: 10,x:4,y:4)
        }
        
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
