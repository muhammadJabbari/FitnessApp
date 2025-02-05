//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Mohammad Jabbari on 2/4/25.
//

import Foundation
class HomeViewModel: ObservableObject {
     
    var calories: Int = 123
    var active: Int = 52
    var stand: Int = 8
    
    
    var mockActivities = [Activity(id: 0, title: "Today Steps", subttitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,822"),
                          Activity(id: 1, title: "Today", subttitle: "Goal 1,000", image: "figure.run", tintColor: .red, amount: "5,478"),
                          Activity(id: 2, title: "Today Steps", subttitle: "Goal 50,000", image: "figure.walk", tintColor: .blue, amount: "1,234"),
                          Activity(id: 3, title: "Today Steps", subttitle: "Goal 20,000", image: "figure.walk", tintColor: .purple, amount: "4,787")]
    var mockWorkouts = [Workout(id: 0, title: "Running", image: "figure.run", tintColor: .green, duration: "51 mins", date: "Aug 1", calories: "512 Kcal"),
                        Workout(id: 1, title: "Running", image: "figure.walk", tintColor: .blue, duration: "96 mins", date: "Aug 12", calories: "7542 Kcal"),
                        Workout(id: 2, title: "Running", image: "figure.run", tintColor: .green, duration: "45 mins", date: "Aug 24", calories: "7052 Kcal"),
                        Workout(id: 3, title: "Running", image: "figure.run", tintColor: .green, duration: "30 mins", date: "Aug 30", calories: "2512 Kcal")]
}
