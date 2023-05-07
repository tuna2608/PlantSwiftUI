//
//  SectionTitleView.swift
//  PlantApp
//
//  Created by Anh Tú on 27/04/2023.
//

import SwiftUI

struct SectionTitleView: View {
    var title: String
    var body: some View {
        HStack{
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color("Primary"))
            Spacer()
            Text("See all")
                .fontWeight(.medium)
                .foregroundColor(Color.black.opacity(0.25))
        }
    }
}

//struct SectionTitleView_Previews: PreviewProvider {
//    static var previews: some View {
//        SectionTitleView()
//    }
//}
