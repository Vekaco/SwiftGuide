//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
enum Token {
    case number(Int)
    case plus
}

class Lexer {
    let input: String.CharacterView
    var position: String.CharacterView.Index
    enum Error: Swift.Error {
        case invalidCharacter(Character)
    }
    
    init(input:String) {
        self.input = input.characters
        self.position = self.input.startIndex
    }
    
    func peek() -> Character? {
        guard position < input.endIndex else {
            return nil
        }
        return input[position]
    }
    
    func advance() {
        assert(position < input.endIndex, "cannot advance past endIndex!")
        position = input.index(after: position)
    }
    func getNumber() -> Int {
        var value = 0
        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0" ... "9":
                let digitValue = Int(String(nextCharacter))!
                value = 10 * value + digitValue
                advance()
            default:
                return value
            }
        }
        return value
    }
    
    func lex() throws -> [Token] {
        var tokens = [Token]()
        while let nextCHaracter = peek() {
            switch nextCHaracter {
            case "0" ... "9":
                let value = getNumber()
                tokens.append(.number(value))
                
            case "+":
                tokens.append(.plus)
                advance()
            case " ":
                advance()
            default:
                throw Lexer.Error.invalidCharacter(nextCHaracter)
            }
        }
        return tokens
    }
}

class Parser {
    enum Error: Swift.Error {
        case unexceptedEndOfInput
        case invalidToken(Token)
    }
    let tokens:[Token]
    var position = 0
    init(tokens: [Token]) {
        self.tokens = tokens
    }
    
    func getNextToken() -> Token? {
        guard position < tokens.endIndex else {
            return nil
        }
        let token = tokens[position]
        position += 1
        return token
    }
    func getNumber() throws -> Int {
        guard let token = getNextToken() else {
            throw Parser.Error.unexceptedEndOfInput
        }
        switch token {
        case .number(let value):
            return value
        case .plus:
            throw Parser.Error.invalidToken(token)
        }
    }
    func parse() throws -> Int {
        var value = try getNumber()
        while let token = getNextToken() {
            switch token {
            case .plus:
                let nextNumber = try getNumber()
                value += nextNumber
            case .number:
                throw Parser.Error.invalidToken(token)
            }
        }
        return value
    }
}

func evaluate(_ input: String) {
    print("Evaluating: \(input)")
    let lexer = Lexer(input:input)
    do {
        let tokens = try lexer.lex()
        print("Lexer output: \(tokens)")
        
        let parser = Parser(tokens: tokens)
        let result = try parser.parse()
        print("Parser output: \(result)")
        
    } catch Lexer.Error.invalidCharacter(let character){
        print("Input contained an invalid character: \(character)")
    } catch Parser.Error.unexceptedEndOfInput {
        print("Unexcepted end of input during parsing")
    } catch Parser.Error.invalidToken(let token) {
        print("invalid token during parsing: \(token)")
    } catch {
        print("An error occurred: \(error)")
    }
}

evaluate("10 + 3 + 5")



//evaluate("1 + 2 + abcdefg")

