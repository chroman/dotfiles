Vim�UnDo� ��>'�R`�RZ���o%���ġ�D�T��r   9                                   RN�d    _�                             ����                                                                                                                                                                                                                                                                                                                                                             RN�[    �   6   8              end�   4   6          	end�   2   4          	    end�   0   2          		end�   .   0          -		    format.json { render :json => @errors }�   -   /          +		    @errors = @guest.errors.full_messages�   +   -          		else�   )   +          			    end�   '   )          			end�   %   '          .			    format.json { render :json => @errors }�   $   &          .			    @errors = @contact.errors.full_messages�   #   %          			    @guest.destroy�   !   #          			else�      !          
			    end�                I				format.json { render :json => { :status => 'OK' }, status: :created }�                				end�               				    ActionMailer::Base.mail(:from => 'tuhotelenmorelos@gmail.com', :to => Hotel.find(params[:hotel_id]).email, :subject => 'Nueva solicitud de informacion', :body => 'Se ha realizado una nueva solicitud de informacion a traves del portal. Favor de revisar').deliver�                				if Rails.env.production?�                			    if @contact.save�                			if @contact.valid?�               1			@contact = Contact.new(room_id: params[:room_id].blank? ? nil : params[:room_id] == 0 ? nil : params[:room_id], guest_id: @guest.id, check_in: params[:check_in], check_out: params[:check_out], adults: params[:adults], children: params[:children], comment: params[:comment], hotel_id: params[:hotel_id])�                		    if @guest.save�                		if @guest.valid?�                	    respond_to do |format|�                w	    @guest = Guest.new(name: params[:name], email: params[:email], phone: params[:phone], hotel_id: params[:hotel_id])�   	             	def create�      	          	end�                N	    self.response.headers["Content-Type"] = "application/json; charset=UTF-8"�                3	    @status = @hotels.blank? ? "NO_RESULTS" : "OK"�                h	    @hotels = Hotel.search(params[:destinations], params[:fares], params[:categories], params[:promos])�                
	def index�                2    class HotelsController < ApplicationController5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             RN�_     �                                 ActionMailer::Base.mail(:from => 'tuhotelenmorelos@gmail.com', :to => Hotel.find(params[:hotel_id]).email, :subject => 'Nueva solicitud de informacion', :body => 'Se ha realizado una nueva solicitud de informacion a traves del portal. Favor de revisar').deliver�               :            @contact = Contact.new(room_id: params[:room_id].blank? ? nil : params[:room_id] == 0 ? nil : params[:room_id], guest_id: @guest.id, check_in: params[:check_in], check_out: params[:check_out], adults: params[:adults], children: params[:children], comment: params[:comment], hotel_id: params[:hotel_id])�                x      @guest = Guest.new(name: params[:name], email: params[:email], phone: params[:phone], hotel_id: params[:hotel_id])�                4      @status = @hotels.blank? ? "NO_RESULTS" : "OK"�                i      @hotels = Hotel.search(params[:destinations], params[:fares], params[:categories], params[:promos])5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             RN�c    �               !                  ActionMailer::Base.mail(:from => 'turestaurantenmorelos@gmail.com', :to => Hotel.find(params[:restaurant_id]).email, :subject => 'Nueva solicitud de informacion', :body => 'Se ha realizado una nueva solicitud de informacion a traves del portal. Favor de revisar').deliver�                n      @restaurants = Hotel.search(params[:destinations], params[:fares], params[:categories], params[:promos])�                0  class HotelsController < ApplicationController5��