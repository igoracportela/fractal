# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "news/new" do
  before(:each) do
    assign(:new, stub_model(New,
      :title => "MyString",
      :content => "MyText",
      :image => "MyString",
      :slug => "MyString"
    ).as_new_record)
  end

  it "renders new new form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => news_path, :method => "post" do
      assert_select "input#new_title", :name => "new[title]"
      assert_select "textarea#new_content", :name => "new[content]"
      assert_select "input#new_image", :name => "new[image]"
      assert_select "input#new_slug", :name => "new[slug]"
    end
  end
end
