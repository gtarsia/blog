class Views::Rain::Index < Views::Base
  def title = "gtarsia.dev"

  def columns = 125
  def rows = 25

  def view_template
    div(id: "rain", data: { controller: "rain", "rain-rows-value": rows, "rain-columns-value": columns }) do
      rows.times do |column|
        div(class: "flex") do
          columns.times do |row|
            span { "F" }
          end
          nil
        end
      end
    end
    style {
      <<~CSS
    #rain {
      background-color: black;
      color: black;
      user-select: none;
      cursor: wait;
    }

    .blink {
      color: white;
    }
      CSS
    }
  end
end
