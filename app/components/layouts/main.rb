class Components::Layouts::Main < Components::Base
  include Phlex::Rails::Helpers::CSRFMetaTags
  include Phlex::Rails::Helpers::CSPMetaTag
  include Phlex::Rails::Helpers::StylesheetLinkTag
  include Phlex::Rails::Helpers::JavascriptImportmapTags

  prop :title, String

  def view_template
    html do
      head do
        title { @title }
        meta(name: "viewport", content: "width=device-width,initial-scale=1")
        meta(name: "apple-mobile-web-app-capable", content: "yes")
        meta(name: "mobile-web-app-capable", content: "yes")
        csrf_meta_tags
        csp_meta_tag
        # Enable PWA manifest for installable apps (make sure to enable in config/routes.rb too!)
        # = tag.link rel: "manifest", href: pwa_manifest_path(format: :json)
        link(rel: "icon", href: "/icon.png", type: "image/png")
        link(rel: "icon", href: "/icon.svg", type: "image/svg+xml")
        link(rel: "apple-touch-icon", href: "/icon.png")
        link(rel: "preload", href: "https://fonts.googleapis.com")
        link(rel: "preload", href: "https://fonts.gstatic.com", crossorigin: true)
        link(href: "https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300..700;1,300..700&family=Grenze+Gotisch:wght@100..900&family=Space+Grotesk:wght@300..700&display=swap", rel: "stylesheet")
        # Includes all stylesheet files in app/assets/stylesheets
        stylesheet_link_tag :app, "data-turbo-track": "reload"
        javascript_importmap_tags
      end
      body do
        render Components::Navbar.new
        main do
          div(class: "container") do
            plain yield
          end
        end
      end
    end
  end
end
