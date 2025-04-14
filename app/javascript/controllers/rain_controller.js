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

  // Returns random number between 0 and columns
  randomColumn() {
    console.log(this)
    return Math.floor(Math.random() * this.columnsValue)
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

  get char() {
    const el = this.element.children[this.row]?.children[this.column]
    if (el == null) { return null }
    return new Char(el)
  }

  queueNext() {
    if (this.char) {
      this.char.off()
    }
    this.row += 1
    if (this.char) {
      this.char.on()
      setTimeout(() => {
        this.queueNext()
      }, this.DELAY)
    }
  }
}

class Char {
  CLS = "blink"
  constructor(element) {
    this.element = element
  }
  get classList() { return this.element.classList }
  on() { this.classList.add(this.CLS) }
  off() { this.classList.remove(this.CLS) }
}
