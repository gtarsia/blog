class PostGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  def create_post_model
    inject_into_file "app/models/post.rb", before: /end\Z/ do
      <<~RUBY.indent(2)

        def self.#{post.id} = Post.new(
          id: "#{post.id}",
          title: "#{post.title}",
          date: "#{post.date}",
          author: "Guido Tarsia"
        )
      RUBY
    end

    inject_into_file "app/models/post.rb", after: /def self\.all\n.*\[\n/ do
      "      #{post.id},\n"
    end
  end

  def create_post_component
    template(
      "post_component.rb.tt",
      "app/views/posts/#{post.id}.rb"
    )
  end

  def post = Post.new(
    id: file_name.gsub("'", "").parameterize.underscore,
    title: file_name.capitalize,
    date: Time.now.strftime("%Y-%m-%d"),
    author: "Guido Tarsia"
  )
end
