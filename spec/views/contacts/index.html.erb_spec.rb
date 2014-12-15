require 'rails_helper'

RSpec.describe "contacts/index", :type => :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      ),
      Contact.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
