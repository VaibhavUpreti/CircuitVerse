# frozen_string_literal: true

class GroupMailer < ApplicationMailer
  def new_group_email(user, group)
    return if user.subscribed?("circuitverse")

    @mentor = user
    @user = @mentor
    @group = group
    mail(to: @mentor.email, subject: "New Group Created ")
  end

  def new_member_email(user, group)
    return if user.subscribed?("circuitverse")

    @user = user
    @group = group
    mail(to: @user.email, subject: "Added to a New group")
  end
end
