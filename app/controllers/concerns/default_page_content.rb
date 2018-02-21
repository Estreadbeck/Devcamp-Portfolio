module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Ethan Streadbeck | My Portfolio Website"
    @seo_keywords = "Ethan Streadbeck portfolio"
  end
end