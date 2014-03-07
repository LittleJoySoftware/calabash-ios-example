And(/^I set the username to "([^"]*)" and password to "([^"]*)"$/) do |arg1, arg2|
  keychain_set_password('com.xamarin.lp-simple-example.service', arg1, arg2)
end


Given(/^that the keychain is clear$/) do
  keychain_clear_accounts_for_service('com.xamarin.lp-simple-example.service')
end

Then(/^the keychain should contain the account password "(.*?)" for "(.*?)"$/) do |password, username|
  actual = keychain_password('com.xamarin.lp-simple-example.service', username)
  if xamarin_test_cloud?
    if actual.nil?
      screenshot_and_raise "expected an entry for '#{username}' in the keychain"
    end
  else
    unless actual == password
      screenshot_and_raise "expected '#{password}' in keychain but found '#{actual}'"
    end
  end
end

Given(/^that the keychain contains the account password "(.*?)" for "(.*?)"$/) do |password, username|
  # app uses the first account/password pair it finds, so clear out
  # any preexisting saved passwords for our service
  keychain_clear_accounts_for_service('com.xamarin.lp-simple-example.service')
  keychain_set_password('com.xamarin.lp-simple-example.service', username, password)
end