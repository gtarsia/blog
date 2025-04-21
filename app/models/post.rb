class Post < Literal::Object
  prop :id, String, reader: :public
  prop :title, String, reader: :public
  prop :date, String, reader: :public
  prop :author, String, reader: :public

  def self.all
    [ digital_rain ]
  end

  def self.routes
    get "posts/digital_rain" => "posts/digital_rain#show", as: :digital_rain
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
end
