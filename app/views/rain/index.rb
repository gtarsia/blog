class Views::Rain::Index < Views::Base
  def title = "gtarsia.dev"

  def columns = 125
  def rows = 35

  def view_template
    div(id: "rain", data: { controller: "rain", "rain-rows-value": rows, "rain-columns-value": columns }) do
      rows.times do |column|
        div(class: "flex") do
          columns.times do |row|
            span { "a" }
          end
          nil
        end
      end
    end
    # Load matrix.tff font
    style {
      <<~CSS
    #rain {
      background-color: black;
      color: black;
      user-select: none;
      cursor: wait;
      font-family: MyAwesomeFont;
    }

    .on {
      animation: block 1s infinite linear;
    }
    @keyframes block {
      0% {
        color: black;
      }
      10% {
        color: white;
      }
      50% {
        color: green;
      }
      100% {
        color: black;
      }
    }
      CSS
    }
  end
end
