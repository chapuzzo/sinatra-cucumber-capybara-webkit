Given(/^I am in the app$/) do
  visit '/'
end

When(/^I read the title$/) do

end

Then(/^it reads 'MyApp'$/) do
  page.has_title? 'MyApp'
end

