module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Streadbeck Development | Custom Websites"
    @seo_keywords = "Ethan Streadbeck Development Custom Websites"
  end
end