require 'spec_helper'

describe "labels/edit" do
  before(:each) do
    @label = assign(:label, stub_model(Label,
      :name => "MyString",
      :kind => "MyString",
      :project_id => "MyString"
    ))
  end

  it "renders the edit label form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", label_path(@label), "post" do
      assert_select "input#label_name[name=?]", "label[name]"
      assert_select "input#label_kind[name=?]", "label[kind]"
      assert_select "input#label_project_id[name=?]", "label[project_id]"
    end
  end
end
