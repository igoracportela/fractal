# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "testimonials/index" do
  before(:each) do
    assign(:testimonials, [
      stub_model(Testimonial,
        :name => "",
        :description => "MyText",
        :site => "Site",
        :image => "Image",
        :slug => "Slug"
      ),
      stub_model(Testimonial,
        :name => "",
        :description => "MyText",
        :site => "Site",
        :image => "Image",
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of testimonials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Site".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
