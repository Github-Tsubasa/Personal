class MessagesController < ApplicationController
  def index
    @group = Group.new
    # @group.users << current_user
  end
end
