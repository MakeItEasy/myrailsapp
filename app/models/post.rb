# encoding: UTF-8
# 
#--
# BaseInfo:
#   Authors: dairugang
#
#++
# == Model 帖子
# 这里是帖子的主要操作和属性
# == DB属性
# * <tt>body</tt> - 帖子内容
# * <tt>title</tt> - 帖子标题
#
class Post < ActiveRecord::Base
  attr_accessible :body, :title

  validates :title, presence: true

  # 检查帖子
  def self.check_post()
  end

  # 查询帖子
  #
  # === Parameters
  # * +id+: 帖子id
  # * +name+: 帖子标题
  #
  # === Returns
  # 所有帖子
  #
  # === Examples
  #   Post.new({id: 1}).get_post_by # => results[]
  def get_post_by(id, name)
  end
end
