//
//  HomeView.swift
//  FitnessApp
//
//  Created by Mohammad Jabbari on 1/31/25.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(alignment: .leading){
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Spacer()
                    VStack{
                        VStack(alignment: .leading, spacing: 8){
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.red)
                            
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        VStack(alignment: .leading, spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.green)
                            
                            
                            Text("5 mins")
                                .bold()
                        }
                        .padding(.bottom)
                        VStack(alignment: .leading, spacing: 8){
                            Text("stand")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.blue)
                            Text("8 hours")
                                .bold()
                        }
                            
                    }
                    Spacer()
                    ZStack{
                        ProgressCircleView(progress: $calories, goal: 600, color: .red)
                        ProgressCircleView(progress: $active, goal: 60, color: .green)
                            .padding(.all, 20)
                        ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                            .padding(.all, 40)
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                .padding()
                HStack{
                    Text("Fitness Activity")
                        .font(.title2)
                    Spacer()
                    Button(action: {}) {
                        Text("Show more")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                            
                    }
                }
                .padding()
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                    ActivityCard()
                    ActivityCard()
                    ActivityCard()
                    ActivityCard()
                    ActivityCard()
                    ActivityCard()
                }
                .padding(.horizontal)
            }
        }
            
        
    }
}

#Preview {
    HomeView()
}
