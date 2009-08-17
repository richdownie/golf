Given /I select "(.*)" from "(.*)"/ do |text, id|
  @browser.select_list(:id, id).select(text)
end