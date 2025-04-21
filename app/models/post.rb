class Post < Literal::Object
  prop :id, String, reader: :public
  prop :title, String, reader: :public
  prop :date, String, reader: :public
  prop :author, String, reader: :public

  def view
    "views/posts/#{id}".classify.constantize.new(self)
  end

  def self.all
    [
      im_a_recovering_java_script_developer,
      digital_rain
    ]
  end

  def self.find(id)
    all.find { |post| post.id == id }
  end

  def self.digital_rain = Post.new(
    id: "digital_rain",
    title: "Digital Rain",
    date: "2025-10-21",
    author: "Guido Tarsia"
  )

  def self.im_a_recovering_java_script_developer = Post.new(
    id: "im_a_recovering_java_script_developer",
    title: "I'm a recovering JavaScript developer",
    date: "2025-04-21",
    author: "Guido Tarsia"
  )
end
