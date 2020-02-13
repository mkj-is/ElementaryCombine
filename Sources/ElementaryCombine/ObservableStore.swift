import Combine
import Elementary

public final class ObservableStore<State, Action>: ObservableObject {

    @Published public private(set) var state: State

    private var baseStore: Store<State, Action>?

    public init(
        state: State,
        update: @escaping Update<State, Action>,
        effect: Effect<State, Action>? = nil,
        initialAction: Action? = nil
    ) {
        self.state = state

        let passthroughEffect: Effect<State, Action> = { [weak self] state, _, _ in
            self?.state = state()
        }
        let combinedEffect = effect.flatMap { join(effects: $0, passthroughEffect) } ?? passthroughEffect

        baseStore = Store<State, Action>(
            state: state,
            update: update,
            effect: combinedEffect,
            initialAction: initialAction
        )
    }

    public func dispatch(_ action: Action) {
        baseStore?.dispatch(action)
    }
}
