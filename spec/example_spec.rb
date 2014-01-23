require 'spec_helper.rb'
require_relative '../web/myApp.rb'

describe 'testing my app' do
  it 'works' do
    visit '/'
    expect(page).to have_content 'MyApp'
  end
end
