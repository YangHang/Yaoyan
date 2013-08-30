# == Schema Information
#
# Table name: yanluns
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Yanlun < ActiveRecord::Base
  attr_accessible :content, :title
end
