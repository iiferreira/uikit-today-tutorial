//
//  ReminderListViewController+Actions.swift
//  TodayTutorial
//
//  Created by Iuri Ferreira on 10/10/23.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
