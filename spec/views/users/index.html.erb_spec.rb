require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) { assign(:users, create_list(:user, 2)) }

  it "renders a list of users" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Username".to_s), count: 2
  end
end
