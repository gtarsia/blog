# frozen_string_literal: true

class Views::Base < Components::Base
  include Components

  def around_template
    render layout.new(title:) do
      super
    end
  end

  def title = "gtarsia.dev"

  def layout = Components::Layouts::Main
end
