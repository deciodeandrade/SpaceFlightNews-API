require 'rails_helper'

RSpec.describe ArticleEvent, type: :model do
  it { is_expected.to belong_to :article }
  it { is_expected.to belong_to :event }
end
