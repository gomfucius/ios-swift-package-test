import FloatingPanel
import RxSwift
import RxRelay

struct MyLibrary {
    var text = "Hello, World!"
    var relay = BehaviorRelay(value: 1)
    var disposable = DisposeBag()
    
    func makeFloatingPanel() {
        let panel = FloatingPanelController()
        print(panel) // Verify that this compiles
    }
    
    func doRx() {
        relay.subscribe { value in
            print(value)
        }.disposed(by: disposable)
    }
}
