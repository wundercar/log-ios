import Foundation

/// Protocol to reach a convention in Logging
public protocol Logger {
    // swiftlint:disable function_parameter_count
    
    /// Log a message
    ///
    /// - Parameters:
    ///   - messages: Undetermined list of parameters to log
    ///   - level: Level of the log
    ///   - filename: File name
    ///   - line: Line nunmber
    ///   - column: Column nunmber
    ///   - funcName: Method name
    func log(_ messages: Any..., level: LogLevel, filename: String, line: Int, column: Int, funcName: String)
    
    /// Private / Utility method to log with an array of parameters
    ///
    /// - Parameters:
    ///   - messages: Undetermined list of parameters to log
    ///   - level: Level of the log
    ///   - filename: File name
    ///   - line: Line nunmber
    ///   - column: Column nunmber
    ///   - funcName: Method name
    // swiftlint:disable:next identifier_name
    func _log(_ message: [Any], level: LogLevel, filename: String, line: Int, column: Int, funcName: String)
    
    /// Change the log level from now on
    ///
    /// - Parameter logLevel: Level to change to
    func change(logLevel: LogLevel)
    
    // swiftlint:enable function_parameter_count
}
