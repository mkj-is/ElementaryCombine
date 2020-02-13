# ElementaryCombine

[**Elementary**](https://github.com/mkj-is/Elementary) uni-directional architecture extension.
This package provides `ObservableStore` which can be easily used
in SwiftUI apps (but not exclusively).

## Installation

When using Swift package manager install using Xcode 11+ or add following line to your dependencies:

```swift
.package(url: "https://github.com/mkj-is/ElementaryCombine.git", from: "0.1.0")
```

## Usage

The `ObservableStore` builds on top of Elementary `Store` and adds conformance
to `ObservableObject` in Combine. Due to this fact it can ve easily connected
to SwiftUI views. See the following example of incrementing counter:

```swift
struct RootView: View {
    @ObservedObject var store = ObservableStore(state: 0, update: updateCounter)

    var body: some View {
        VStack {
            Text("\(store.state)")
            Button(action: { self.store.dispatch(.increment) }) {
                Text("Increment")
            }
        }
    }
}

```

## Contributing

All contributions are welcome.

Project was created by [Matěj Kašpar Jirásek](https://github.com/mkj-is).

Project is licensed under [MIT license](LICENSE.txt).

