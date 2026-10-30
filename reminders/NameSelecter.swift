//
//  NameSelecter.swift
//  reminders
//
//  Created by Will Peterson on 10/28/26.
//

import SwiftUI

struct NameSelecter: View {
    var selectedColor: Color
    @Binding var title: String
    
    var body: some View {
        VStack {
            Image(systemName: "list.bullet.circle.fill")
                .foregroundStyle(selectedColor)
                .font(.system(size: 70))
            TextField("List Name", text: $title)
                .foregroundStyle(selectedColor)
                .padding()
                .background(Color.secondary.opacity(0.20), in: RoundedRectangle(cornerRadius: 16))
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.secondary.opacity(0.15), in: RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    
    @Previewable @State var title: String = "Todo List"
    
    NameSelecter(selectedColor: .red, title: $title)
}
