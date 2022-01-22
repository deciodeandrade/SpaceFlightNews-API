require 'rails_helper'

RSpec.describe ArticleLaunch, type: :model do
  it { is_expected.to belong_to :article }
  it { is_expected.to belong_to :launch }
end
