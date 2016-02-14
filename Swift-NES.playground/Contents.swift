//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

typealias Byte = UInt8

struct Registers {
  let accumulator: Byte
  let xIndex: Byte
  let yIndex: Byte
  let status: StatusRegister
  let programCounter: Byte
  let stackPointer: Byte
}

struct StatusRegister {
  let contents: Byte
  
  var carry: Bool {
    return (contents & (1 << 0)) == 1
  }
  
  var zero: Bool {
    return (contents & (1 << 1)) == 1
  }
  
  var interruptsEnabled: Bool {
    return (contents & (1 << 2)) == 1
  }
  
  var decimalMode: Bool {
    return (contents & (1 << 3)) == 1
  }
  
  var b: Bool {
    return (contents & (1 << 4)) == 1
  }
  
  var overflow: Bool {
    return (contents & (1 << 6)) == 1
  }
  
  var sign: Bool {
    return (contents & (1 << 7)) == 1
  }
}