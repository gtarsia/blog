class Post < Literal::Object
  prop :id, String, reader: :public
  prop :title, String, reader: :public
  prop :description, String, reader: :public
  prop :date, String, reader: :public
  prop :author, String, reader: :public

  def view
    "views/posts/#{id}".classify.constantize.new(self)
  end

  def route
    "posts/#{id}"
  end

  def self.all
    [
      im_a_recovering_java_script_developer,
      digital_rain_part_one
    ]
  end

  def self.find(id)
    all.find { |post| post.id == id }
  end

  def self.digital_rain_part_one = Post.new(
    id: "digital_rain_part_one",
    title: "Digital Rain: Part One",
    description: "My first attempt at a Matrix style digital rain",
    date: "2025-10-21",
    author: "Guido Tarsia"
  )

  def self.im_a_recovering_java_script_developer = Post.new(
    id: "im_a_recovering_java_script_developer",
    title: "I'm a recovering JavaScript developer",
    description: "My perspective on the state of JavaScript development",
    date: "2025-04-21",
    author: "Guido Tarsia"
  )
end
