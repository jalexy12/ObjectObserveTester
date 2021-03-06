require 'rails_helper'

RSpec.describe "tweets/new", type: :view do
  before(:each) do
    assign(:tweet, Tweet.new(
      :user => nil,
      :title => "MyString",
      :text => "MyText"
    ))
  end

  it "renders new tweet form" do
    render

    assert_select "form[action=?][method=?]", tweets_path, "post" do

      assert_select "input#tweet_user_id[name=?]", "tweet[user_id]"

      assert_select "input#tweet_title[name=?]", "tweet[title]"

      assert_select "textarea#tweet_text[name=?]", "tweet[text]"
    end
  end
end
