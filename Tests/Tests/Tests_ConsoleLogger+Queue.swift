import Foundation
import XCTest

@testable import Log

// MARK: - Queue

extension TestsConsoleLogger {
    func test_Store_Log_Queue_Full() {
        // Given
        let log = ConsoleLogger(level: .verbose, maxEntries: 3)
        let logMessage1 = "Test Verbose Log"
        let logMessage2 = "Test Verbose Log 2"
        let logMessage3 = "Test Verbose Log 3"
        let logMessage4 = "Test Verbose Log 4"
        
        // When
        log.verbose(logMessage1)
        log.verbose(logMessage2)
        log.verbose(logMessage3)
        log.verbose(logMessage4) // It inserts as the last element
        
        // Then
        let result1 = log.history.items.first!
        XCTAssertEqual(result1.message, logMessage2)
        
        let result2 = log.history.items.last!
        XCTAssertEqual(result2.message, logMessage4)
    }
}
