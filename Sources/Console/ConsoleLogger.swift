import Foundation

/// Console implementation for Logger
public class ConsoleLogger: BaseLogger {
    // Mark: - Overrides
    public override func print(message: String) {
        self.queue.async {
            Swift.print(message)
        }
    }
}
