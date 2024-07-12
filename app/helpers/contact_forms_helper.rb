module ContactFormsHelper
  def sortable(column, header = nil)
    allowed_columns = %w[created_at]
    header ||= column
    if allowed_columns.include?(column)
      direction = column == params[:sort] && params[:direction] == 'asc' ? 'desc' : 'asc'
      link_to header, sort: column, direction:
    else
      header
    end
  end
end
