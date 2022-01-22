require 'rails_helper'

RSpec.describe Article, type: :model do
 
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:url) }
  it { is_expected.to validate_presence_of(:imageUrl) }
  it { is_expected.to validate_presence_of(:newsSite) }
  it { is_expected.to validate_presence_of(:summary) }
  it { is_expected.to validate_presence_of(:publishedAt) }
  
  it { is_expected.to validate_uniqueness_of(:url) }
  it { is_expected.to validate_uniqueness_of(:imageUrl) }

  it { is_expected.to have_many(:article_launches).dependent(:destroy) }
  it { is_expected.to have_many(:launches).through(:article_launches) }

  it { is_expected.to have_many(:article_events).dependent(:destroy) }
  it { is_expected.to have_many(:events).through(:article_events) }
end
