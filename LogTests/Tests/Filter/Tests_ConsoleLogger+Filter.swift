import Foundation
import XCTest

@testable import Log

extension TestsConsoleLogger {
    // swiftlint:disable:next identifier_name
    func _test_Store_Log(type: LogLevel, logLevel: LogLevel, expectedHistoryCount: Int) {
        // Given
        let log = ConsoleLogger(level: logLevel, maxEntries: 1)
        
        // When
        TestsConsoleLoggerUtils.createLog(type: type, logger: log)
        
        // Then
        let result = log.history.items.count
        XCTAssertEqual(result, expectedHistoryCount)
    }
}
