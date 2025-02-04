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
    
    var mockActivities = [
        Activity(id: 0, title: "Today Steps", subttitle: "Goal 12,000", image: "figure.walk", tintColor: .red, amount: "9,852"),
        Activity(id: 1, title: "Today Steps", subttitle: "Goal 12,00", image: "figure.walk", tintColor: .green, amount: "1,257"),
        Activity(id: 2, title: "Today Steps", subttitle: "Goal 5,000", image: "figure.walk", tintColor: .blue, amount: "987"),
        Activity(id: 3, title: "Today Steps", subttitle: "Goal 1,000", image: "figure.walk", tintColor: .purple, amount: "4,322"),
        
    ]
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "23 mins", date: "Aug 3", calories: "1245 Kcal"),
        Workout(id: 1, title: "Strength Training", image: "figure.run", tintColor: .green, duration: "23 mins", date: "Aug 3", calories: "1245 Kcal"),
        Workout(id: 2, title: "Walk", image: "figure.walk", tintColor: .cyan, duration: "23 mins", date: "Aug 3", calories: "1245 Kcal"),
        Workout(id: 3, title: "Running", image: "figure.run", tintColor: .cyan, duration: "23 mins", date: "Aug 3", calories: "1245 Kcal")]
    var body: some View {
        NavigationStack {
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
                        ForEach(mockActivities, id: \.id){ activity in
                            ActivityCard(activity: activity)
                        }
                    }
                    .padding(.horizontal)
                    HStack{
                        Text("Recent Workouts")
                            .font(.title2)
                        Spacer()
                        NavigationLink{
                            EmptyView()
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    LazyVStack {
                        ForEach(mockWorkouts, id: \.id){ workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                }
            }
        }
            
        
    }
}

#Preview {
    HomeView()
}
