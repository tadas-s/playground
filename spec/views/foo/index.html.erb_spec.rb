require 'rails_helper'

RSpec.describe "foo/index.html.erb", type: :view do
  it 'foobars' do
    render
    binding.pry
  end
end
