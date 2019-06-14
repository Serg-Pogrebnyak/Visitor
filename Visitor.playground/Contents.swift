import UIKit

protocol Component {
    func update(_ visitor: Visitor)
}

class ConcreteComponentA: Component {
    func update(_ visitor: Visitor) {
        print("A component call \(visitor.visit(self))")
    }
}

class ConcreteComponentB: Component {
    func update(_ visitor: Visitor) {
        print("B component call \(visitor.visit(self))")
    }
}

protocol Visitor {
    func visit(_ component: ConcreteComponentA) -> String
    func visit(_ component: ConcreteComponentB) -> String
}

class ConcreteVisitor: Visitor {
    func visit(_ component: ConcreteComponentA) -> String {
        return "visitor component A"
    }
    
    func visit(_ component: ConcreteComponentB) -> String {
        return "visitor component B"
    }
}

let element = ConcreteComponentA()
element.update(ConcreteVisitor())
