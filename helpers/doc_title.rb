def doc_title
  seperator = '—'
  if @title
    page_title = @title
  elsif current_resource.data.title
    page_title = current_resource.data.title
  end
  if page_title
    page_title << seperator << data.settings.site.site_title
  else
    return data.settings.site.site_title
  end
end
