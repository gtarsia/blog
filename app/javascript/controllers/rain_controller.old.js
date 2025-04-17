import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    rows: Number,
    columns: Number
  }

  connect() {
    this.begin()
  }

  begin() {
    setInterval(() => {
      this.runStrand()
    }, 500)
  }

  runStrand() {
    const strand = new Strand(this.element, this.randomColumn())
    strand.start()
  }
}

class Strand {
  DELAY = 100
  constructor(element, column) {
    this.element = element
    this.column = column
  }

  start() {
    this.row = -1
    this.queueNext()
  }

  get block() {
    const el = this.element.children[this.row]?.children[this.column]
    if (el == null) { return null }
    return new Block(el)
  }

  // queueNext() {
  //   if (this.block) {
  //     // this.block.off()
  //   }
  //   this.row += 1
  //   if (this.block) {
  //     this.block.on()
  //     setTimeout(() => {
  //       this.queueNext()
  //     }, this.DELAY)
  //   }
  // }

  #randomColumn() {
    return Math.floor(Math.random() * this.columnsValue)
  }
}

class Block {
  constructor(element) {
    this.element = element
  }
  get classList() { return this.element.classList }
  // Turns on blink class and sets a random character from a-z
  on() {
    this.classList.add("on")
    this.element.textContent = this.randomChar()
  }
  off() { this.classList.remove("on") }

  randomChar() {
    return String.fromCharCode(97 + Math.floor(Math.random() * 26))
  }
}
