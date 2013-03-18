# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "links/edit" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :title => "MyString",
      :description => "MyText",
      :url => "MyString",
      :image => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path(@link), :method => "post" do
      assert_select "input#link_title", :name => "link[title]"
      assert_select "textarea#link_description", :name => "link[description]"
      assert_select "input#link_url", :name => "link[url]"
      assert_select "input#link_image", :name => "link[image]"
      assert_select "input#link_slug", :name => "link[slug]"
    end
  end
end
