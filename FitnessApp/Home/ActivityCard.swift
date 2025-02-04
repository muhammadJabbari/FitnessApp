//
//  ActivityCard.swift
//  FitnessApp
//
//  Created by Mohammad Jabbari on 2/2/25.
//

import SwiftUI

struct Activity{
    let id: Int
    let title: String
    let subttitle: String
    let image: String
    let tintColor: Color
    let amount: String
}

struct ActivityCard: View {
    @State var activity: Activity
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading, spacing: 8){
                        Text(activity.title)
                        
                        Text(activity.subttitle)
                            .font(.caption)
                    }
                    Spacer()
                    
                    Image(systemName: activity.image)
                        .foregroundStyle(activity.tintColor)
                }
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard(activity: Activity(id: 0, title: "Today Steps", subttitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9988"))
}
