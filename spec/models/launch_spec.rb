require 'rails_helper'

RSpec.describe Launch, type: :model do
  it { is_expected.to have_many(:article_launches).dependent(:destroy) }
  it { is_expected.to have_many(:articles).through(:article_launches) }
end
