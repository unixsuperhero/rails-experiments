module ApplicationHelper
  # clear a content_for block then set it
  def contents_of(name,&block)
    @view_flow.content.delete name
    content_for name, &block
  end
end
