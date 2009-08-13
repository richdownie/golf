Given /I set the text field "(.*)" with "(.*)"/ do |id, text|
  @browser.text_field(:id, id).set(text)
end  

