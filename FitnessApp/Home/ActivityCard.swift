//
//  ActivityCard.swift
//  FitnessApp
//
//  Created by Mohammad Jabbari on 2/2/25.
//

import SwiftUI

struct ActivityCard: View {
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading, spacing: 8){
                        Text("Today Steps")
                        
                        Text("Goal 10,000")
                            .font(.caption)
                    }
                    Spacer()
                    
                    Image(systemName: "figure.walk")
                        .foregroundStyle(Color(uiColor: .green))
                }
                Text("6,154")
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard()
}
