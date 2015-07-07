require 'rails_helper'

RSpec.describe "tweets/edit", type: :view do
  before(:each) do
    @tweet = assign(:tweet, Tweet.create!(
      :user => nil,
      :title => "MyString",
      :text => "MyText"
    ))
  end

  it "renders the edit tweet form" do
    render

    assert_select "form[action=?][method=?]", tweet_path(@tweet), "post" do

      assert_select "input#tweet_user_id[name=?]", "tweet[user_id]"

      assert_select "input#tweet_title[name=?]", "tweet[title]"

      assert_select "textarea#tweet_text[name=?]", "tweet[text]"
    end
  end
end
