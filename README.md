IronHack-Lab7-Design-Patterns
# Integrating Design Patterns in a Project Scenario

## 1 Design Problem Solving:

* **Scenario Description**: Participants are provided with a series of common software design challenges. They will need to choose appropriate design patterns to solve these specific problems effectively.

* Design Challenges:

  * **Global Configuration Management**: Design a system that ensures a single, globally accessible configuration object without access conflicts.

  * **Dynamic Object Creation Based on User Input**: Implement a system to dynamically create various types of user interface elements based on user actions.

  * **State Change Notification Across System Components**: Ensure components are notified about changes in the state of other parts without creating tight coupling.

  * **Efficient Management of Asynchronous Operations**: Manage multiple asynchronous operations like API calls which need to be coordinated without blocking the main application workflow.

* **Task**: Outline solutions that integrate these patterns into a cohesive design to address the challenges.

## 2 Project Execution Simulation:

  * **Global Configuration Management**:
    Singleton Design Pattern
    Intent: Ensure that class has a single instance, and provide a global point of access to it.

```swift
import UIKit

class FileManager{
    
    // create a singleton
    static let shared = FileManager()
    
    // create a private initializer
    private init() {
        
    }
    
    // method to request file
    func checkFileAccess(user: String) {
        
        // condition to check username
        if user == ("@ligia.mx") {
            
            print("Access Granted")
        }
        
        else {
            print(" Access Denied")
        }
    }
}

let userName = "@ligia.mx"

// access method
let file = FileManager.shared

file.checkFileAccess(user: userName)
```
### output
```
Access Granted
```

   Adding a private initializer is important, because it stops other parts of our code from trying to create a FileManager class instance. However,   the class creates its own instance of itself as a static variable, which means the only instance of the FileManager class is the one it created: FileManager.shared.

  * **Dynamic Object Creation Based on User Input**:
The ‘Factory Method’ pattern defines an interface for creating an object and delegates the object creation to subclasses.

```swift
protocol UIView {}
class UITextField: UIView {}
class UISwitch: UIView {}
class UIButton: UIView {}
class UILabel: UIView {}
class UIImageView: UIView {}
class DisneyTextField: UITextField {}
class DisneySwitch: UISwitch {}
class DisneyButton: UIButton {}
class DisneyLabel: UILabel {}
class DisneyImageView: UIImageView {}
enum ComponentType {
    case textfield
    case `switch`
    case button
    case label
    case image
}
protocol ComponentFactory {
    func createView(component: ComponentType) -> UIView
}
class DisneyComponentFactory: ComponentFactory {
    func createView(component: ComponentType) -> UIView {
        switch component {
        case .textfield:
            print("DisneyTextField created")
            return DisneyTextField()
        case .switch:
            print("DisneySwitch created")
            return DisneySwitch()
        case .button:
            print("DisneyButton created")
            return DisneyButton()
        case .label:
            print("DisneyLabel created")
            return DisneyLabel()
        case .image:
            print("DisneyImageView created")
            return DisneyImageView()
        }
    }
}
// Client
let disneyFactory = DisneyComponentFactory()
disneyFactory.createView(component: .label)
```

### output
```
DisneyLabel created
```

  * **State Change Notification Across System Components**: 

  * **Efficient Management of Asynchronous Operations**: 
