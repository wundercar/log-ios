import Foundation
import XCTest

@testable import Log

// MARK: Level filter Debug

extension TestsConsoleLogger {
    func test_Filtered_Log_Verbose_with_Debug() {
        self._test_Store_Log(type: .verbose, logLevel: self.logLevel, expectedHistoryCount: 0)
    }
    
    func test_Store_Log_Debug_with_Debug() {
        self._test_Store_Log(type: .debug, logLevel: self.logLevel, expectedHistoryCount: 1)
    }
    
    func test_Store_Log_Info_with_Debug() {
        self._test_Store_Log(type: .info, logLevel: self.logLevel, expectedHistoryCount: 1)
    }
    
    func test_Store_Log_Warning_with_Debug() {
        self._test_Store_Log(type: .warning, logLevel: self.logLevel, expectedHistoryCount: 1)
    }
    
    func test_Store_Log_Error_with_Debug() {
        self._test_Store_Log(type: .error, logLevel: self.logLevel, expectedHistoryCount: 1)
    }
    
    func test_Store_Log_Critical_with_Debug() {
        self._test_Store_Log(type: .critical, logLevel: self.logLevel, expectedHistoryCount: 1)
    }
}

private extension TestsConsoleLogger {
    var logLevel: LogLevel {
        return .debug
    }
}
