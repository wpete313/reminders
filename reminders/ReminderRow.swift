//
//  ReminderRow.swift
//  reminders
//
//  Created by Will Peterson on 10/29/26.
//

import SwiftUI

struct ReminderRow: View {
    @Binding var reminder: Reminder
    var selectedColor: Color
    
    var body: some View {
        HStack(spacing: 15) {
            Button {
                reminder.isCompleted.toggle()
            } label: {
                Image(systemName: reminder.isCompleted ? "circle.fill" : "circle")
                    .foregroundStyle(selectedColor)
                    .font(.system(size: 22))
            }
            
            TextField("", text: $reminder.title)
                .foregroundStyle(reminder.isCompleted ? .black.opacity(0.4) : .black)
            Spacer()
        }
    }
}

#Preview {
    @Previewable @State var reminder = Reminder(title: "")
                                                
    ReminderRow(reminder: $reminder, selectedColor: .red)
}
