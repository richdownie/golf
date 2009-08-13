Given /I should see the text "(.*)"/ do |text|
  assert(@browser.contains_text(text))
end