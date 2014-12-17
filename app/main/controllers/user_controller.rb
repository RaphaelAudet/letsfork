class UserController < Volt::ModelController
  def index
    self.model = :store
  end

  def show
    store._users.find(_id: params._id).then do |results|
      self.model = results[0]
    end
  end

end
