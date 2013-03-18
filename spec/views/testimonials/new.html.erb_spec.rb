# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "testimonials/new" do
  before(:each) do
    assign(:testimonial, stub_model(Testimonial,
      :name => "",
      :description => "MyText",
      :site => "MyString",
      :image => "MyString",
      :slug => "MyString"
    ).as_new_record)
  end

  it "renders new testimonial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => testimonials_path, :method => "post" do
      assert_select "input#testimonial_name", :name => "testimonial[name]"
      assert_select "textarea#testimonial_description", :name => "testimonial[description]"
      assert_select "input#testimonial_site", :name => "testimonial[site]"
      assert_select "input#testimonial_image", :name => "testimonial[image]"
      assert_select "input#testimonial_slug", :name => "testimonial[slug]"
    end
  end
end
