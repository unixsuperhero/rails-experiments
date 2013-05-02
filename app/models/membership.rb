class Membership
  attr_accessor :string_status
  # private attribute :enum_status

#----------------------------------- <strong>
# Self-Encapsulating Field (get/set)
#-----------------------------------

  def enum_status
    statuses[@enum_status]
  end

  def enum_status= status
    return @enum_status = statuses.invert.fetch(status) if status.is_a?(String)
    @enum_status = status
  end

  # REFERENCE HASH
  #---------------
  def statuses
    {
      1 => 'Active',
      2 => 'Cancelled',
      3 => 'Other',
    }
  end
#</strong>-----------------------------------


# For Experimental Conditionals
#------------------------------

  def self.enum_status_by_id(id)
    statuses(id)
  end

  def enum_status_id
    instance_variable_get :@enum_status
  end

  def active?
    enum_status_id == 1
  end

  def cancelled?
    enum_status_id == 2
  end

end