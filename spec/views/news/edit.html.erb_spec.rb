# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "news/edit" do
  before(:each) do
    @new = assign(:new, stub_model(New,
      :title => "MyString",
      :content => "MyText",
      :image => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders the edit new form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => news_path(@new), :method => "post" do
      assert_select "input#new_title", :name => "new[title]"
      assert_select "textarea#new_content", :name => "new[content]"
      assert_select "input#new_image", :name => "new[image]"
      assert_select "input#new_slug", :name => "new[slug]"
    end
  end
end
