class User < ActiveRecord::Base
	#has_many :pictures
<<<<<<< HEAD
=======
	def roles=(roles)
		self.roles_mask = (roles & ROLES).map {|r| 2**ROLES.index(r)}.inject(0, :+)
	end
	 def roles
	 	ROLES.reject do |r|
	 		((roles_mask || 0) & 2**ROLES.index(r)).zero?
	 	end
	 end
	 def is?(role)
	 	roles.include?(role.to_s)
	 end




>>>>>>> cancan
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
<<<<<<< HEAD
  attr_accessible :email, :password, :password_confirmation, :remember_me
  ROLES = %W[admin moderator author banned]
=======
  attr_accessible :email, :password, :password_confirmation, :remember_me, :roles, :ROLES
>>>>>>> cancan
end
