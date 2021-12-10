import Foundation

public extension LogLevel {
    
    var emoji: String {
        switch self {
            case .verbose:
                return "🔳"
            case .debug:
                return "◽️"
            case .info:
                return "🔷"
            case .warning:
                return "🔶"
            case .error:
                return "🛑"
            case .critical:
                return "💥"
            case .none:
                return ""
        }
    }
    
}
