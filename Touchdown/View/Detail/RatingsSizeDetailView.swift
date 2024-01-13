//
//  RatingsSizeDetailView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 13.01.2024.
//

import SwiftUI

struct RatingsSizeDetailView: View {
    //MARK: - Properties
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    @State private var selectedButton: Int?
    @State private var selectedSize: String?
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            
            VStack(alignment:.leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id:\.self) { item in
                        Button {
                            selectedButton = item
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundStyle(selectedButton == item ? Color.blue.opacity(0.8) : Color.white)

                        }

                    }
                }
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id:\.self) { size in
                        Button(action: {
                            selectedSize = size
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundStyle(selectedSize == size ? Color.green : colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                 RoundedRectangle(cornerRadius: 5)
                                    .stroke(selectedSize == size ? Color.green : colorGray, lineWidth: 2)
                                )
                        })
                    }
                })
            }
            
        }//HStack
    }
}

#Preview {
    RatingsSizeDetailView()
}
