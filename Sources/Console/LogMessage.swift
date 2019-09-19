import Foundation

public struct LogMessage {
    // MARK: Properties
    
    public var emoji: String?
    public var date: Date
    public var message: String
    public var level: LogLevel
    public var filename: String
    public var line: Int
    public var column: Int
    public var funcName: String
    
    private static var dateFormat = "dd/MM/yyyy hh:mm:ss"
    private static var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat
        formatter.locale = Locale.current
        formatter.timeZone = TimeZone.current
        return formatter
    }
}

// MARK: Public methods

extension LogMessage {
    public var formattedString: String {
        let components: [String] = [
            self.emoji,
            " ",
            self.format(date: Date()),
            " [",
            self.sourceFileName(filePath: self.filename),
            ": ",
            "\(self.line)",
            "] ",
            //            "\(column)",
            //            " ",
            // self.funcName,
            self.message
        ]
        .compactMap { $0 }
        
        let result = components.joined(separator: "")
        
        return result
    }
}

// MARK: Private methods

private extension LogMessage {
    func format(date: Date) -> String {
        return type(of: self).dateFormatter.string(from: date)
    }
    
    func sourceFileName(filePath: String) -> String {
        let components = filePath.components(separatedBy: "/")
        return components.isEmpty ? "" : components.last!
    }
}
