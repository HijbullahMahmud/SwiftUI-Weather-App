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
            BackgroundView(topColor: Color.blue, bottomColor: Color("lightBlue"))
            VStack{
                CityTextView(cityName: "Dhaka, Bangladesh")
                WeaterStatusView(imageName: "cloud.sun.fill", temperature: 41)
                
                HStack(spacing: 20){
                 WeaterDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 41)
                    WeaterDayView(dayOfWeek: "WED", imageName: "sun.rain.fill", temperature: 39)
                    WeaterDayView(dayOfWeek: "THU", imageName: "sun.max.fill", temperature: 42)
                    WeaterDayView(dayOfWeek: "FRI", imageName: "sun.max.fill", temperature: 40)
                    WeaterDayView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: 40)
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
            Text("\(temperature)°C")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,
                          weight: .medium, design: .default))
            .padding()
            .foregroundColor(.white)
    }
}

struct WeaterStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: 
        imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 180, height: 180)
            Text("\(temperature)°C")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom, 40)
    }
}
