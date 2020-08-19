//
//  Weather.swift
//  First Assignment
//
//  Created by tahani alrashidi on 8/19/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct Weather: View {
    let times = ["Now", "4AM", "5AM", "6AM", "7AM", "8AM", "9AM"]
    let images = ["moon.stars.fill", "moon.stars.fill", "sunrise.fill", "cloud.sun.fill", "cloud.sun.fill", "sun.max.fill", "sun.max.fill"]
    let temperatures = ["30°", "32°", "31°", "35°", "38°", "40°", "41°"]
    let daysOfWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    let mintemperatures = ["22°", "24°", "25°", "29°", "30°", "31°", "36°"]
    var body: some View {
        ZStack(alignment: .center){
            Image("BG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                Text("Kuwait City")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                Text("Mostly Clear")
                    .foregroundColor(Color.white)
                Text("25°")
                    .font(.system(size: 60))
                    .foregroundColor(Color.white)
                    Divider()
                HStack{
                    Text("Sunday")
                        .foregroundColor(Color.white)
                        .bold()
                    Text("Today")
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("31°")
                        .foregroundColor(Color.white)
                    Text("24°")
                        .foregroundColor(Color.white)
                }
                    Divider()
                HStack(spacing: 12.8){
                    ForEach(times, id: \.self){
                        time in Text(time).foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .bold()
                    }
                    }
                    HStack(spacing: 32){
                        ForEach(images, id: \.self){
                            image in Image(systemName: image)
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.white)
                        }
                    }
                    HStack(spacing: 28){
                        ForEach(temperatures, id: \.self){
                            temperature in Text(temperature)
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }.padding()
                
                HStack(alignment: .center, spacing: 95){
                    VStack(spacing: 14){
                        ForEach(daysOfWeek, id: \.self){
                            day in Text(day)
                                .foregroundColor(Color.white)
                                .font(.system(size: 20))
                                .bold()
                        }
                    }
                    VStack(spacing: 14){
                        ForEach(images, id: \.self){
                            image in Image(systemName: image)
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.white)
                        }
                    }
                    VStack(spacing: 17){
                        ForEach(temperatures, id: \.self){
                            temperature in HStack(spacing: 10){
                                Text(temperature)
                                    .foregroundColor(Color.white)
                                    .bold()
                                Text(temperature)
                                    .foregroundColor(Color.gray)
                            }
                        }
                    }
                }
            }
        }
    }
}
    
    
    struct Weather_Previews: PreviewProvider {
        static var previews: some View {
        Weather()
    }
}
