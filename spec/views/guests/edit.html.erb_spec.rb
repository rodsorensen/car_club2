require 'spec_helper'

describe "guests/edit" do
  before(:each) do
    @guest = assign(:guest, stub_model(Guest,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit guest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guest_path(@guest), "post" do
      assert_select "input#guest_first_name[name=?]", "guest[first_name]"
      assert_select "input#guest_last_name[name=?]", "guest[last_name]"
      assert_select "input#guest_email[name=?]", "guest[email]"
    end
  end
end
