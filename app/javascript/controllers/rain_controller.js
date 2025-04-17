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
      this.strands.tick()
    }, 75)
  }

  get strands() {
    return this._strands ||= new Strands(this.element, this.rowsValue, this.columnsValue)
  }
}

class Strands {
  constructor(element, rows, columns) {
    this.element = element
    this.rows = rows
    this.columns = columns
  }
  /** @type {TickCounter} */ _counter;
  /** @type {Array} */ _arr;
  get counter() {
    return this._counter ||= new TickCounter()
  }

  tick() {
    this.counter.add()
    for (const strand of this.strands) {
      if (strand.done) {
        this.removeStrand(strand)
        continue
      }
      strand.tick()
    }
    console.log(this.strands.length)
    if (this.counter.bump(4)) {
      this.push()
    }
  }

  get strands() {
    return this._arr ||= [this.newStrand()]
  }

  push() {
    this.strands.push(this.newStrand())
  }

  newStrand() {
    return new Strand(this.element, this.randomColumn(), this.rows)
  }

  removeStrand(strand) {
    this.strands.splice(this.strands.indexOf(strand), 1)
  }

  randomColumn() {
    return Math.floor(Math.random() * this.columns)
  }
}

class TickCounter {
  /** @type {number} */ _counter;
  get counter() {
    return this._counter ||= 0
  }

  reset() {
    this._counter = 0;
  }

  add() {
    this._counter += 1
  }

  // This function resets the counter and returns true if the counter is equal to n
  bump(n) {
    if (this.counter == n) {
      this.reset()
      return true
    }
    return false
  }
}

class Strand {
  /** @type {number} */ _row;
  constructor(element, column, rows) {
    this.element = element
    this.column = column
    this.rows = rows
  }

  get row() {
    return this._row ||= 0
  }

  get block() {
    return new Block(this.element.children[this.row]?.children[this.column])
  }

  tick() {
    this.block.off()
    this._row += 1
    this.block.on()
  }

  get done() {
    return this.row >= this.rows
  }
}

class Block {
  constructor(element) {
    this.element = element
  }
  // Turns on blink class and sets a random character from a-z
  on() {
    if (!this.element) return
    this.element.classList.remove("on")
    this.element.offsetWidth // force reflow to retrigger animation
    this.element.classList.add("on")
    this.element.textContent = this.randomChar()
  }
  off() {
    if (!this.element) return
    // this.element.classList.remove("on")
  }
  randomChar() {
    return String.fromCharCode(97 + Math.floor(Math.random() * 26))
  }
}
