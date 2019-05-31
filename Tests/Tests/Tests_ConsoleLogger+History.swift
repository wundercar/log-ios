import Foundation
import XCTest

@testable import Log

// MARK: Log History

extension TestsConsoleLogger {
    func test_Store_Log_Verbose() {
        self._test_LogStored(logType: .verbose)
    }
    
    func test_Store_Log_Debug() {
        self._test_LogStored(logType: .debug)
    }
    
    func test_Store_Log_Info() {
        self._test_LogStored(logType: .info)
    }
    
    func test_Store_Log_Warning() {
        self._test_LogStored(logType: .warning)
    }
    
    func test_Store_Log_Error() {
        self._test_LogStored(logType: .error)
    }
    
    func test_Store_Log_Critical() {
        self._test_LogStored(logType: .critical)
    }
}

private extension TestsConsoleLogger {
    func _test_LogStored(logType: LogLevel) {
        // Given
        let log = ConsoleLogger(level: .verbose, maxEntries: 10)
        
        // When
        TestsConsoleLoggerUtils.createLog(type: logType, logger: log)
        
        // Then
        let result = log.history.items.count
        XCTAssertEqual(result, 1)
    }
}
