//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Umut Barış Çoşkun on 7.01.2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedCode: String = ""
  
    
    var body: some View {
        NavigationView{
            VStack{
               ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer()
                    .frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
                    .padding()
                
            }.navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
