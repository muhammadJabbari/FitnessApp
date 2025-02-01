//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Mohammad Jabbari on 1/31/25.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    init(){
        let appearence = UITabBarAppearance()
        appearence.configureWithOpaqueBackground()
        appearence.stackedLayoutAppearance.selected.iconColor = .green
        appearence.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        UITabBar.appearance().scrollEdgeAppearance = appearence
    }
    var body: some View {
        TabView (selection: $selectedTab){
            HomeView()
                .tag( "Home" )
                .tabItem { Image(systemName: "house")
                    Text("Home")
                }
            HistoricDataView()
                .tag( "HistoricData" )
                .tabItem { Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
