function Link(link)
  -- This may still cause false positives for other protocols.
  if link.target:find("http://") == nil and link.target:find("https://") == nil then
    link.target = string.gsub(link.target, "%.md", ".html")
  end

  return link
end
