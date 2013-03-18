# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "employees/new" do
  before(:each) do
    assign(:employee, stub_model(Employee,
      :name => "MyString",
      :post => "MyString",
      :description => "MyText",
      :image => "MyString",
      :slug => "MyString"
    ).as_new_record)
  end

  it "renders new employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path, :method => "post" do
      assert_select "input#employee_name", :name => "employee[name]"
      assert_select "input#employee_post", :name => "employee[post]"
      assert_select "textarea#employee_description", :name => "employee[description]"
      assert_select "input#employee_image", :name => "employee[image]"
      assert_select "input#employee_slug", :name => "employee[slug]"
    end
  end
end
