## Code Linda ##
class User < ApplicationRecord
 has_many :tools
  #Include default devise modules. Others available are:
  #:confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :validatable
validates :email, presence: true, uniqueness: true
end

## Code Equipe ##
#class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable,
        # :recoverable, :rememberable, :validatable
  # validates :email, with: /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/, presence: true, uniqueness: true
#end
