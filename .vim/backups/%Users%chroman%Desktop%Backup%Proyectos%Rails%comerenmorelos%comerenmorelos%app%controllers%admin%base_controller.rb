Vim�UnDo� ���Hޞd�|ކM��ۿ{l�8���Ú��       	before_filter :initialize_hotel                              RN��    _�                            ����                                                                                                                                                                                                                                                                                                                                                             RN�     �               	def initialize_hotel5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             RN��     �               X	    if current_admin_user.role?(:hotel_admin) || current_admin_user.role?(:hotel_staff)5�_�                       V    ����                                                                                                                                                                                                                                                                                                                                                             RN��     �               ]	    if current_admin_user.role?(:restaurant_admin) || current_admin_user.role?(:hotel_staff)5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             RN��     �               +		@current_hotel = current_admin_user.hotel5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             RN��     �               0		@current_hotel = current_admin_user.restaurant5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             RN��     �               >	    redirect_to admin_hotels_url, :alert => exception.message5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             RN��    �                	before_filter :initialize_hotel5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             RN��    �                    end�                	end�                C	    redirect_to admin_restaurants_url, :alert => exception.message�                0	rescue_from CanCan::AccessDenied do |exception|�                	end�                	    end�                5		@current_restaurant = current_admin_user.restaurant�                b	    if current_admin_user.role?(:restaurant_admin) || current_admin_user.role?(:restaurant_staff)�                	def initialize_restaurant�   
             	private�      
          	end�      	          9	    @current_ability ||= Ability.new(current_admin_user)�                	def current_ability�                %	before_filter :initialize_restaurant�                (	before_filter :authenticate_admin_user!�                	layout 'admin'�                0    class BaseController < ApplicationController5��