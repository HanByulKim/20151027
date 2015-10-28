class IdtimelineController < ApplicationController
        before_action :authenticate_user!, except: :show #전체를 로그인해야만 볼 수 있도록 함

    def designate
        sel_user = Blog.user_id
        redirect_to '/idpart'
    end
    def index
        @shows=Blog.where(user_id: params[:sel_user])
    end
    
end
# <!--  <input type="hidden" name="sel_user" value="<%=b.user.email%>">
#                 <% end %><% form_tag '/idpart' do %>
    #            <li><a type="submit" name="sel_user" value="<%=b.user.email%>"><%= b.user.email %></a></li>
               
     #           <% end %>
#                <input type="submit" name="sel_user" value="<%=b.user.email%>"> -->