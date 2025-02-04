//
//  WorkoutCard.swift
//  FitnessApp
//
//  Created by Mohammad Jabbari on 2/3/25.
//

import SwiftUI
struct Workout {
    let id: Int
    let title: String
    let image: String
    let tintColor: Color
    let duration: String
    let date: String
    let calories: String
}
struct WorkoutCard: View {
    @State var workout: Workout
    var body: some View {
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundStyle(workout.tintColor)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            VStack(spacing: 10){
                HStack{
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(workout.duration)
                        
                }
                HStack{
                    Text(workout.date)
                    Spacer()
                    Text(workout.calories)
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "23 mins", date: "Aug 3", calories: "1245 Kcal"))
}
