//
//  EditSheet.swift
//  reminders
//
//  Created by Will Peterson on 10/25/26.
//

import SwiftUI

struct EditSheet: View {
    // TODO: Add title binding
    @Binding var selectedColor: Color
    @Binding var title: String
    
    var body: some View {
        VStack(spacing: 20) {
                // TODO: Add list.bullet.circle.fill icon and TextField
            Text("List Info")
                .foregroundStyle(selectedColor)
                .font(.system(size: 20, weight: .semibold))
            
            NameSelecter(selectedColor: selectedColor, title: $title)
            
            ColorChooser(selectedColor: $selectedColor)
            
            Spacer()
        }
        .foregroundStyle(selectedColor)
        .padding()
    }
}

#Preview {
    @Previewable @State var selectedColor: Color = .red
    @Previewable @State var title: String = "Todo List"
    
    EditSheet(selectedColor: $selectedColor, title: $title)
        .preferredColorScheme(.light)
}

