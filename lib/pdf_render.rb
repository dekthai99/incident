# Template handler voor pdfs genereren,
# Zie http://www.cnblogs.com/hardrock/archive/2006/07/24/458184.html.
module ActionView # :nodoc:
  class PDFRender
    PAPER = 'A4'
    include ApplicationHelper
    
    def initialize(action_view)
      @action_view = action_view
    end
    
    # Render the PDF
    def render(template, local_assigns = {})
      @action_view.controller.headers["Content-Type"] ||= 'application/pdf'
      
      # Retrieve controller variables
      @action_view.controller.instance_variables.each do |v|
        instance_variable_set(v, @action_view.controller.instance_variable_get(v))
      end
      
      pdf = ::PDF::Writer.new( :paper => PAPER )
      pdf.compressed = true if RAILS_ENV != 'development'
      eval template, nil, "#{@action_view.base_path}/#{@action_view.first_render}.#{@action_view.pick_template_extension(@action_view.first_render)}" 
   
#    If you would like to have the user prompted to download the file 
#    instead of displaying it within the window 
#    (can be useful for handling validation prior to download), 
#    then add the following to your PDFRender class:
      @action_view.controller.headers["Content-Disposition"] ||= 'attachment'
      
      pdf.render
    end
  end
end