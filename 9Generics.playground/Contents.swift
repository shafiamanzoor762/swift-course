import Foundation
import CoreGraphics

//let x: CGFloat = 1.0
//


func perform<N: Numeric>(
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N
) -> N {
    op(lhs, rhs)
}


//perform(+, on: 10.1, and: 20.2)

perform(+, on: 10, and: 20)
perform(-, on: 10, and: 20)
perform(*, on: 10, and: 20)
perform(/, on: 10, and: 20)

func perform2<N>(
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N
) -> N where N: Numeric{
    op(lhs, rhs)
}


//perform(+, on: 10.1, and: 20.2)

perform2(+, on: 10, and: 20)
perform2(-, on: 10, and: 20)
perform2(*, on: 10, and: 20)
perform2(/, on: 10, and: 20)


protocol CanJump {
    func jump()
}

protocol CanRun {
    func run()
}

struct Person: CanJump, CanRun {
    func jump() {
        "Jumping..."
    }
    func run(){
        "Running..."
    }
}

func jumpAndRun(value: Any){
    value.jump()
    value.run()
}
