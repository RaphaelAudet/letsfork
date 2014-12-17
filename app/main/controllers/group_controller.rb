class GroupController < Volt::ModelController

  def index
    self.model = :store
  end

  def show
    store._groups.find(_id: params._id).then do |results|
      self.model = results[0]
    end
  end

  def new
    self.model = store._groups.buffer
  end

  def edit
    store._groups.find(_id: params._id).then do |result|
      self.model = result[0].buffer
    end
  end

  def save
    res = model.save!.then do
      go '/group'
    end
  end

end
