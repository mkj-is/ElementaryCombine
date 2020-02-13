import SwiftUI
import ElementaryCombine

enum CounterAction {
    case increment
}


private func updateCounter(state: inout Int, action: CounterAction) {
    switch action {
    case .increment:
        state += 1
    }
}

func counterStore(state: Int = 0) -> ObservableStore<Int, CounterAction> {
    ObservableStore(
        state: state,
        update: updateCounter
    )
}
