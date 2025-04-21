class Views::Posts::DigitalRainPartOne < Views::Post
  def columns = 75
  def rows = 25

  def view_template
    p { "I made this Digital Rain via CSS. " }
    p { "It's not very performant since it does repaints for each letter." }
    p {
      plain "It's not too pretty or faithful to the "
      a(href: "https://youtu.be/MvEXkd3O2ow?t=21") { "original" }
      plain "."
    }

    p {
      plain "And I plan to redo it with "
      code { "<canvas>" }
      plain " since it's more powerful."
    }
    p { "So I'd rather just release this and not waste any more time with it. " }
    div(id: "rain", data: { controller: "rain", "rain-rows-value": rows, "rain-columns-value": columns }) do
      rows.times do |column|
        div do
          columns.times do |row|
            span { letter }
          end
          nil
        end
      end
    end
    style!
  end

  def style!
    style {
      <<~CSS
    #rain {
      user-select: none;
      cursor: wait;
      font-family: MatrixFont;
      text-align: center;
      color: #{bg_green};
      background-color: #{bg_green};
      filter: blur(.2px);
      font-size: 1.25rem;
      line-height: 1.2rem;
    }
    .trigger {
      animation: block 4s 1 linear forwards;
    }
    @keyframes block {
      0% {
        color: #{bg_green};
      }
      1%, 5% {
        color: white;
        text-shadow: 2px 2px 6px white;
      }
      5%, 80% {
        color: green;
        text-shadow: 2px 2px 6px #{bg_green};
      }
      80% {
        color: #{bg_green};
        text-shadow: black;
      }
    }
      CSS
    }
  end

  def bg_green
    "#000f00"
  end

  def letter
    letters.sample
  end

  def letters
    @letters ||= ("a".."z").to_a
  end
end
