Vim�UnDo� ���E��ݯV�ﻜ��Ni,���dE���>)      U  attr_accessible :check_in, :check_out, :guest_id, :comment, :adults, :restaurant_id      '      	       	   	   	    RSD|    _�                             ����                                                                                                                                                                                                                                                                                                                                                             RN��     �   	             '    validates :hotel, :presence => true�                    belongs_to :hotel�                g    attr_accessible :check_in, :check_out, :guest_id, :room_id, :comment, :adults, :children, :hotel_id5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             RN��    �                x    validates :children, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :message => " no valido."}�                j    validates :adults, :presence => true, :numericality => {:greater_than => 0, :message => " no valido."}�                k    validates :check_out, :presence => true#, :date => { :after => Time.now, :before => Time.now + 1.year }�                j    validates :check_in, :presence => true#, :date => { :after => Time.now, :before => Time.now + 1.year }�   
             '    validates :guest, :presence => true�   	             ,    validates :restaurant, :presence => true�      
          '    #validates :room, :presence => true�                    #validations�                    belongs_to :room�                    belongs_to :guest�                    belongs_to :restaurant�                l    attr_accessible :check_in, :check_out, :guest_id, :room_id, :comment, :adults, :children, :restaurant_id5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             RSD9     �                v  validates :children, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :message => " no valido."}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             RSD>    �                i  validates :check_out, :presence => true#, :date => { :after => Time.now, :before => Time.now + 1.year }5�_�                       Z    ����                                                                                                                                                                                                                                                                                                                                                             RSDa     �               j  attr_accessible :check_in, :check_out, :guest_id, :room_id, :comment, :adults, :children, :restaurant_id5�_�                       <    ����                                                                                                                                                                                                                                                                                                                                                             RSDh     �               _  attr_accessible :check_in, :check_out, :guest_id, :room_id, :comment, :adults, :restaurant_id5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             RSDl     �                 belongs_to :guest    �                 belongs_to :room5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             RSDu     �                %  #validates :room, :presence => true5�_�                  	      '    ����                                                                                                                                                                                                                                                                                                                                                             RSD{    �               U  attr_accessible :check_in, :check_out, :guest_id, :comment, :adults, :restaurant_id5��