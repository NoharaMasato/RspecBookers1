# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, "モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
    it "有効な投稿内容の場合" do
      expect(FactoryBot.build(:book)).to be_valid
    end
    it "titleが空欄の場合" do
      expect(FactoryBot.build(:book, :no_title)).to_not be_valid
    end
    it "bodyが空欄の場合" do
      expect(FactoryBot.build(:book, :no_body)).to_not be_valid
    end
  end
end
