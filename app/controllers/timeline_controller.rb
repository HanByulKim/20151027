class TimelineController < ApplicationController
    before_action :authenticate_user!, except: :index #전체를 로그인해야만 볼 수 있도록 함
    
    def index
        @blogs=Blog.all.reverse
        # @myblogs = Blog.where(user_id: current_user.id)
    end
    def trivial
        @shows=Blog.where(user_id: params[:sel_user])
    end
    
    def write
        Blog.create(user_id: current_user.id, content: params[:naeyong])
        redirect_to :root
    end
    
    def ddel
        de=Blog.find(params[:blog_iid])
        de.delete
        redirect_to :root
    end
    
    def revp
        temp = Blog.find(params[:blog_id])
        temp.content = params[:revpost]
        temp.save
        redirect_to :root
    end
    
    def comment
        Comment.create(user_id: current_user.id, blog_id: params[:blog_id], msg: params[:comment])
        redirect_to :root
    end
    
    def comrevp
        tempc = Comment.find(params[:comm_id])
        tempc.msg = params[:revmsg]
        tempc.save
        redirect_to :root
    end
    
    def comddel
        dec=Comment.find(params[:comm_iid])
        dec.delete
        redirect_to :root
    end
end
