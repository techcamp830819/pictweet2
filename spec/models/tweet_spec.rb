require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe 'ツイートの保存' do
    context "ツイートが保存できる場合" do
      it "画像とテキストがあればツイートは保存される" do
      expect(@tweet).to be_valid
      end
      it "テキストのみあればツイートは保存される" do
      @tweet.image = ""
      expect(@tweet).to be_valid  
      end
    end
    context "ツイートが保存できない場合" do
      it "テキストがないとツイートは保存できない" do
        @tweet.Text = ''
        @tweet.valid?
        except(@tweet.error.full_messages), to include("Text can't be blank")
      end
      it "ユーザーが紐付いていないとツイートは保存できない" do
        @tweet.user = nil
        @tweet.valid?
        except(@tweet.error.full_messages), to include("User must exist")
      end
    end
  end
end