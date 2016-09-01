class TargetGroup < ActiveRecord::Base
  belongs_to :panel_provider
  belongs_to :parent_group, class_name: TargetGroup, foreign_key: :parent_id
  has_and_belongs_to_many :countries
  has_many :subgroups, class_name: TargetGroup, foreign_key: :parent_id
end
