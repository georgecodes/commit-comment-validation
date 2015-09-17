Given(/^I exist$/) do

end

When(/^I ask for help$/) do
 
end

Then(/^I get it$/) do
  
end

Given(/^the commit message "([^"]*)"$/) do |comment|
  @comment = comment
end

Given(/^the most recent commit comment$/) do
  @comment = `git log -1 --pretty=%B` unless @comment
end

Given(/^the github repository "([^"]*)"$/) do |repo|
  `rm -rf ./tmp`
  `mkdir ./tmp`
  `git clone --depth 1 git@github.com:#{repo}.git ./tmp`
end

When(/^I examine the most recent commit comment$/) do
  @comment = `git -C tmp log -1 --pretty=%B`

end

Then(/^it should not have an issue number in it$/) do
  expect(@comment).to_not match(/.*(\[\w+-\d+\]).*/)
end

Then(/^it should have an issue number in it$/) do
  expect(@comment).to match(/.*(\[\w+-\d+\]).*/)
end