//  Created by Songwen Ding on 15/5/26.
//  Copyright (c) 2015 DingSoung. All rights reserved.

#if canImport(Foundation)
import Foundation.NSThread

public enum LogLevel: String {
    case debug, info, warning, error, exception
}

fileprivate extension LogLevel {
    var symbol: String {
        switch self {
        case .debug: return "\u{0001F539}"
        case .info: return "\u{0001F538}"
        case .warning: return "\u{26A0}\u{FE0F}"
        case .error: return "\u{0001F6AB}"
        case .exception: return "\u{2757}\u{FE0F}"
        }
    }
}

private struct Log: TextOutputStream {
    static var shared = Log()
    #if DEBUG
    let file = "debug_log.txt"
    #else
    let file = "log.txt"
    #endif
    private init() {}
    /// Appends the given string to the stream.
    mutating func write(_ string: String) {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .allDomainsMask)
        let documentDirectoryPath = paths.first!
        let log = documentDirectoryPath.appendingPathComponent(self.file)
        do {
            let handle = try FileHandle(forWritingTo: log)
            handle.seekToEndOfFile()
            handle.write(string.data(using: .utf8)!)
            handle.closeFile()
        } catch {
            print(error.localizedDescription)
            do {
                try string.data(using: .utf8)?.write(to: log)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

extension Log {
    static func log(_ items: Any...) {
        #if DEBUG
        print(items)
        #endif
        print(items, to: &Log.shared)
    }
}

/// log with detail message
public func print(
    _ items: Any...,
    file: String = #file, line: Int = #line, function: String = #function,
    logLevel: LogLevel = .info) {
    let fileName = URL(fileURLWithPath: file).deletingPathExtension().lastPathComponent
    Log.log(logLevel.symbol, logLevel.rawValue, CFAbsoluteTimeGetCurrent(), "⇨", fileName, line, function)
    items.forEach { Log.log($0) }
    switch logLevel {
    case .debug, .info:
        break
    case .warning:
        Log.log(Thread.current)
    case .error, .exception:
        Log.log(Thread.current)
        Thread.callStackSymbols.forEach { Log.log($0) }
    }
}

public func info(
    _ items: Any...,
    file: String = #file, line: Int = #line, function: String = #function,
    logLevel: LogLevel = .info) {
    return print(items, file: file, line: line, function: function, logLevel: .info)
}

public func debug(
    _ items: Any...,
    file: String = #file, line: Int = #line, function: String = #function,
    logLevel: LogLevel = .info) {
    return print(items, file: file, line: line, function: function, logLevel: .debug)
}

public func warning(
    _ items: Any...,
    file: String = #file, line: Int = #line, function: String = #function,
    logLevel: LogLevel = .info) {
    return print(items, file: file, line: line, function: function, logLevel: .warning)
}

public func error(
    _ items: Any...,
    file: String = #file, line: Int = #line, function: String = #function,
    logLevel: LogLevel = .info) {
    return print(items, file: file, line: line, function: function, logLevel: .error)
}

public func exception(
    _ items: Any...,
    file: String = #file, line: Int = #line, function: String = #function,
    logLevel: LogLevel = .info) {
    return print(items, file: file, line: line, function: function, logLevel: .exception)
}

#endif
