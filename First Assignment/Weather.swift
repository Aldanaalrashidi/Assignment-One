//
//  Weather.swift
//  First Assignment
//
//  Created by tahani alrashidi on 8/19/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct Weather: View {
    let times = ["Now", "4AM", "5AM", "6AM", "7AM", "8AM", "9AM", "10AM", "11AM", "12PM", "1PM", "2PM", "3PM", "4PM", "5PM", "6PM", "7PM"]
    let scrollViewImgs = ["moon.stars.fill", "moon.stars.fill", "sunrise.fill", "cloud.sun.fill", "cloud.sun.fill", "sun.max.fill", "sun.max.fill", "sun.max.fill", "sun.max.fill", "cloud.sun.fill", "cloud.sun.fill", "sun.max.fill"
    , "sun.max.fill", "sunset.fill", "moon.stars.fill", "moon.stars.fill", "moon.stars.fill"]
    let weekImgs = ["moon.stars.fill", "moon.stars.fill", "sunrise.fill", "cloud.sun.fill", "cloud.sun.fill", "sun.max.fill", "sun.max.fill"]
    let scrollViewTemp = ["30°", "32°", "31°", "35°", "38°", "40°", "41°", "45°", "46°", "49°", "52°", "55°", "56°", "50°", "45°", "42°", "36°"]
    let weekTemp = ["22°", "24°", "30°", "34°", "43°", "29°", "33°"]
    let daysOfWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
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
                }.padding()
                    Divider()
                
                ScrollView(.horizontal){
                VStack{
                HStack(spacing: 12.8){
                    ForEach(times, id: \.self){
                        time in Text(time).foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .bold()
                    }
                    }
                    HStack(spacing: 32){
                        ForEach(scrollViewImgs, id: \.self){
                            image in Image(systemName: image)
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.white)
                        }
                    }
                    HStack(spacing: 28){
                        ForEach(scrollViewTemp, id: \.self){
                            temperature in Text(temperature)
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                    }
                }
                
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
                        ForEach(weekImgs, id: \.self){
                            image in Image(systemName: image)
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.white)
                        }
                    }
                    VStack(spacing: 17){
                        ForEach(weekTemp, id: \.self){
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
