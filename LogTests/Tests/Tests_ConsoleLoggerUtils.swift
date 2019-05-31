import Foundation
import XCTest

@testable import Log

class TestsConsoleLoggerUtils {}

extension TestsConsoleLoggerUtils {
    static func createLog(type: LogLevel, logger: Logger) {
        switch type {
        case .verbose:
            logger.verbose("Test Verbose Log")
        case .debug:
            logger.debug("Test Debug Log")
        case .info:
            logger.info("Test Info Log")
        case .warning:
            logger.warning("Test Warning Log")
        case .error:
            logger.error("Test Error Log")
        case .critical:
            logger.critical("Test Critical Log")
        default:
            return
        }
    }
}
