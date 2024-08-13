//
//  LoadingView.swift
//  weather_App
//
//  Created by Hasham Raza  on 11/08/2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                   .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    LoadingView()
}
