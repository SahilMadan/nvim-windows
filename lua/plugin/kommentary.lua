local present, kommentary_config = pcall(require, "kommentary.config")
if not present then
  return
end

kommentary_config.configure_language("default", {prefer_single_line_comments = true})
