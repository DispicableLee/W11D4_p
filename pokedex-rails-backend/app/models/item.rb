# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  image_url  :string           not null
#  price      :integer          not null
#  happiness  :integer          not null
#  pokemon_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
end