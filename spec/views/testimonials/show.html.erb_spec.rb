# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "testimonials/show" do
  before(:each) do
    @testimonial = assign(:testimonial, stub_model(Testimonial,
      :name => "",
      :description => "MyText",
      :site => "Site",
      :image => "Image",
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/Site/)
    rendered.should match(/Image/)
    rendered.should match(/Slug/)
  end
end
