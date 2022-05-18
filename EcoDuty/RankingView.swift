//
//  RankingView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

struct RankingView: View {
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().tintColor = UIColor.white
        UISegmentedControl.appearance().selectedSegmentTintColor = .white
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor(named: "cosmic-cobalt") ?? .purple], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.white], for: .normal)
    }
    @State private var selectedRank: RegionRank = .local
    enum RegionRank: String, CaseIterable {
        case local = "Local"
        case national = "National"
    }
    var body: some View {
        ZStack {
            Color("cosmic-cobalt")
                .ignoresSafeArea()
            VStack {
                VStack {
                    Spacer()
                        .frame(height: 100)
                    Picker("Classement", selection: $selectedRank) {
                        ForEach(RegionRank.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    } .pickerStyle(SegmentedPickerStyle())
                        .padding()
                }
                Spacer()
                    .frame(height: 1)
                                if selectedRank == .local {
                                    LocalRankingView_option()
                                } else {
                                    NationalRankingView_option()
                                }
            }
            VStack {
                Text("Classement")
//                    .font(.custom("", size: 18))
                    .bold()
                    .foregroundColor(Color.white)
                    Spacer()
                    .frame(height: 670)
            }
        }
        
    }
}

struct RankingView_Previews: PreviewProvider {
    static var previews: some View {
        RankingView()
    }
}



