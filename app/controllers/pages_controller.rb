class PagesController < ApplicationController
  layout 'admin'
  before_filter :confirm_logged_in
  before_filter :find_subject


  def index
    list
    render('list')

  end

  def list
    @pages = Page.sorted.where(:subject_id => @subject.id)

  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new(:subject_id => @subject.id)
    @page_count = @subject.pages.size + 1
    @subjects = Subject.order('position ASC')
  end

  def create
    new_position = params[:page].delete(:position)
    #Instantiate a new object using form parameters
    @page=Page.new(params[:page])
    #Save the object
    if @page.save
      @page.move_to_position(new_position)
      #If save succeeds, redirect to the list action
      flash[:notice] = "Page created successfully."
      redirect_to(:action => 'list', :subject_id=>@page.subject_id)
    else
      #if save fails, redisplay the form so us
      @page_count = @subject.pages.size + 1
      @subjects = Subject.order('position ASC')
      render('new')
    end

  end

  def edit
    @page = Page.find(params[:id])
    @page_count = @subject.pages.size
    @subjects = Subject.order('position ASC')
  end

  def update

    #Find object using form parameters
    @page=Page.find(params[:id])
    #Update the object
    new_position = params[:page].delete(:position)
    if @page.update_attributes(params[:page])
      @page.move_to_position(new_position)
      #If update succeeds, redirect to the list action
      flash[:notice] = "Page updated successfully."
      redirect_to(:action => 'show', :id=> @page.id, :subject_id =>@page.subject_id)
    else
      #if update fails, redisplay the form so us
      @page_count = @subject.pages.size
      @subjects = Subject.order('position ASC')
      render('edit')
    end


  end

  def delete #Display delete record form
    @page=Page.find(params[:id])
  end

  def destroy #Process delete record form
    page = Page.find(params[:id])
    page.move_to_position(nil)
    page.destroy
    flash[:notice] = "Page destroyed."
    redirect_to(:action => 'list', :subject_id=>@subject.id)
  end

  private

  def find_subject
    if params[:subject_id]
      @subject = Subject.find_by_id(params[:subject_id])
    end
  end




end
