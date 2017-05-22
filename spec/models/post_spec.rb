require 'rails_helper'

describe 'Validations' do
  subject(:post) { Post.new } 
  before { post.valid? }

  [:title, :body].each do |attribute|
    it "should validate presence of #{attribute}" do
      expect( post.errors[attribute].size).to be >= 1
      expect( post.errors.messages[attribute] ).to include "can't be blank"
    end
  end
end