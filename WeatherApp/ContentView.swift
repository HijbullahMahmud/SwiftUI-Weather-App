//
//  ContentView.swift
//  WeatherApp
//
//  Created by Hijbullah Al Mahmud on 27/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Dhaka, Bangladesh")
                    .font(.system(size: 32,
                                  weight: .medium, design: .default))
                    .padding()
                    .foregroundColor(.white)
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }.padding(.bottom, 40)
                
                HStack(spacing: 20){
                 WeaterDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76)
                    WeaterDayView(dayOfWeek: "WED", imageName: "sun.rain.fill", temperature: 74)
                    WeaterDayView(dayOfWeek: "THU", imageName: "sun.max.fill", temperature: 75)
                    WeaterDayView(dayOfWeek: "FRI", imageName: "wind.snow", temperature: 72)
                    WeaterDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 60)
                }
                Spacer()
                
                Button{
                    print("Button Tapped")
                }label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeaterDayView: View {
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
