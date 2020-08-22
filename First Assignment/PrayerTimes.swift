//
//  PrayerTimes.swift
//  First Assignment
//
//  Created by tahani alrashidi on 8/19/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//
//
import SwiftUI

struct PrayerTimes: View {
    let times = ["3:44 AM", "5:09 AM", "11:46 AM", "3:21 PM", "6:22 PM", "7:45 PM"]
    let prayers = ["الفجر", "الشروق", "الظهر", "العصر", "المغرب", "العشاء"]
    let colors = [#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1), #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.8087354275, green: 0.6860546404, blue: 0.5332314768, alpha: 1), #colorLiteral(red: 1, green: 0.3788182327, blue: 0.8882648485, alpha: 1), #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1), #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.3211057836, green: 0.3609371955, blue: 1, alpha: 1), #colorLiteral(red: 1, green: 0.6387161855, blue: 0.1762299656, alpha: 1), #colorLiteral(red: 0.7781938148, green: 0.3118365084, blue: 0.2966630966, alpha: 1), #colorLiteral(red: 0.05313706846, green: 0.8263439119, blue: 0.7305200329, alpha: 1)] as [Any]
    @State var color = #colorLiteral(red: 0.7867490959, green: 0.4849915569, blue: 0.9115932642, alpha: 1)
    
    var body: some View {
        ZStack(alignment: .top){
            Color(color)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 15){
                Spacer()
                HStack{
                    Image(systemName: "folder.fill")
                        .resizable()
                        .modifier(symbolModifier())
                    Spacer()
                    Image(systemName: "gear")
                        .resizable()
                        .modifier(symbolModifier())
                }.padding()
                HStack(alignment: .center){
                    Text("12:00")
                        .font(.system(size: 50))
                        .fontWeight(.medium)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    VStack(spacing: 5){
                        Text("")
                        Text("am")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    }
                }
                Text("مضى على الأذان")
                    .font(.system(size: 20))
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                Divider()
                HStack(spacing: 100){
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    
                    Text("28 أبريل - 5 رمضان")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                }
                .frame(width: 416, height: 55)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3009738116)))
                
                Divider()
                
                HStack(alignment: .bottom , spacing: 140){
                    VStack(spacing: 60){
                        ForEach(times, id: \.self){
                            time in Text(time)
                                .font(.system(size: 30))
                                .fontWeight(.medium)
                                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        }
                    }
                    
                    VStack(spacing: 60){
                        ForEach(prayers, id: \.self){
                            prayer in Text(prayer)
                                .font(.system(size: 30))
                                .fontWeight(.medium)
                                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        }
                    }.onTapGesture {
                        self.color = self.colors.randomElement() as! UIColor
                    }
                }.frame(width: 416, height: 585)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3009738116)))
            }
        }
    }
}


struct PrayerTimes_Previews: PreviewProvider {
    static var previews: some View {
        PrayerTimes()
    }
}
struct symbolModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 30, height: 30)
            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
    }
}
