import Foundation

/// Console implementation for Logger
public class ConsoleLogger: BaseLogger {
    // Mark: - Overrides
    public override func print(message: LogMessage) {
        queue.async {
            Swift.print(message.formattedString)
        }
    }
}
