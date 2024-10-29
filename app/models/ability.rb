# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Post
    can :read, Podcast
    can :read, Issue

    return unless user.present?
    can :read, Podcast
    can :read, Issue
    can :manage, Post, user: user
    can :manage, Comment, user: user

    return unless user.admin? 
    can :manage, :all
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
