require 'rails_helper'

RSpec.describe "contacts/new", :type => :view do
  before(:each) do
    assign(:contact, Contact.new(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_first_name[name=?]", "contact[first_name]"

      assert_select "input#contact_last_name[name=?]", "contact[last_name]"
    end
  end
end
