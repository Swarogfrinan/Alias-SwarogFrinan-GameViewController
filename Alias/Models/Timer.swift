//
//  Timer.swift
//  Alias
//
//  Created by Ilya Vasilev on 31.07.2022.
//

import Foundation
class TimerModel {
class TimerInfo {
   
var count = 0
        // Pointer to function or closure to call when value changes
        var callback: ((Int) -> Void)?

        init(start: Int, callback: @escaping (Int) -> Void) {
            count = start
            self.callback = callback
        }

        deinit {
            print("TimerInfo deinit")
        }
    }

    @objc func decreaseGameTimer(_ timer: Timer) {
        if let userInfo = timer.userInfo as? TimerInfo {
            userInfo.count -= 1

            // call callback with new value
            userInfo.callback?(userInfo.count)

            print(userInfo.count)
            if userInfo.count == 0 {
                print("done")
                timer.invalidate()
            }
        }
    }

    func gameTimerMethod(timeParam: Int, callback: @escaping (Int) -> Void) {
        _ = Timer.scheduledTimer(timeInterval: 1, target: self,
                                 selector: #selector(decreaseGameTimer),
                                 userInfo: TimerInfo(start: timeParam, callback: callback),
                                 repeats: true)
    }
}
