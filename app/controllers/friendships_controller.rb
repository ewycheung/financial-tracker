class FriendshipsController < ApplicationController
  def destroy
    friend = User.find(params[:id])
    friendship = Friendship.where(user_id: current_user.id, friend_id: friend.id).first
    friendship.destroy
    flash[:notice] = "Friend #{friend.full_name} was successfully unfollowed."
    redirect_to my_friends_path
  end
end
