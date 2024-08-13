//
//  WelcomePage.swift
//  weather_App
//
//  Created by Hasham Raza  on 11/08/2024.
//

import SwiftUI
import CoreLocationUI
struct WelcomePage: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack(){
            
            VStack(spacing: 20){
                
                Text("welcome to the Weather App")
                    .bold().font(.title)
                Text("Please Share your Current Location to get the weather in your area ")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
        
}

#Preview {
    WelcomePage()
}

