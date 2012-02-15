require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AlunoturmaanoletivosController do

  # This should return the minimal set of attributes required to create a valid
  # Alunoturmaanoletivo. As you add validations to Alunoturmaanoletivo, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AlunoturmaanoletivosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all alunoturmaanoletivos as @alunoturmaanoletivos" do
      alunoturmaanoletivo = Alunoturmaanoletivo.create! valid_attributes
      get :index, {}, valid_session
      assigns(:alunoturmaanoletivos).should eq([alunoturmaanoletivo])
    end
  end

  describe "GET show" do
    it "assigns the requested alunoturmaanoletivo as @alunoturmaanoletivo" do
      alunoturmaanoletivo = Alunoturmaanoletivo.create! valid_attributes
      get :show, {:id => alunoturmaanoletivo.to_param}, valid_session
      assigns(:alunoturmaanoletivo).should eq(alunoturmaanoletivo)
    end
  end

  describe "GET new" do
    it "assigns a new alunoturmaanoletivo as @alunoturmaanoletivo" do
      get :new, {}, valid_session
      assigns(:alunoturmaanoletivo).should be_a_new(Alunoturmaanoletivo)
    end
  end

  describe "GET edit" do
    it "assigns the requested alunoturmaanoletivo as @alunoturmaanoletivo" do
      alunoturmaanoletivo = Alunoturmaanoletivo.create! valid_attributes
      get :edit, {:id => alunoturmaanoletivo.to_param}, valid_session
      assigns(:alunoturmaanoletivo).should eq(alunoturmaanoletivo)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Alunoturmaanoletivo" do
        expect {
          post :create, {:alunoturmaanoletivo => valid_attributes}, valid_session
        }.to change(Alunoturmaanoletivo, :count).by(1)
      end

      it "assigns a newly created alunoturmaanoletivo as @alunoturmaanoletivo" do
        post :create, {:alunoturmaanoletivo => valid_attributes}, valid_session
        assigns(:alunoturmaanoletivo).should be_a(Alunoturmaanoletivo)
        assigns(:alunoturmaanoletivo).should be_persisted
      end

      it "redirects to the created alunoturmaanoletivo" do
        post :create, {:alunoturmaanoletivo => valid_attributes}, valid_session
        response.should redirect_to(Alunoturmaanoletivo.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved alunoturmaanoletivo as @alunoturmaanoletivo" do
        # Trigger the behavior that occurs when invalid params are submitted
        Alunoturmaanoletivo.any_instance.stub(:save).and_return(false)
        post :create, {:alunoturmaanoletivo => {}}, valid_session
        assigns(:alunoturmaanoletivo).should be_a_new(Alunoturmaanoletivo)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Alunoturmaanoletivo.any_instance.stub(:save).and_return(false)
        post :create, {:alunoturmaanoletivo => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested alunoturmaanoletivo" do
        alunoturmaanoletivo = Alunoturmaanoletivo.create! valid_attributes
        # Assuming there are no other alunoturmaanoletivos in the database, this
        # specifies that the Alunoturmaanoletivo created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Alunoturmaanoletivo.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => alunoturmaanoletivo.to_param, :alunoturmaanoletivo => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested alunoturmaanoletivo as @alunoturmaanoletivo" do
        alunoturmaanoletivo = Alunoturmaanoletivo.create! valid_attributes
        put :update, {:id => alunoturmaanoletivo.to_param, :alunoturmaanoletivo => valid_attributes}, valid_session
        assigns(:alunoturmaanoletivo).should eq(alunoturmaanoletivo)
      end

      it "redirects to the alunoturmaanoletivo" do
        alunoturmaanoletivo = Alunoturmaanoletivo.create! valid_attributes
        put :update, {:id => alunoturmaanoletivo.to_param, :alunoturmaanoletivo => valid_attributes}, valid_session
        response.should redirect_to(alunoturmaanoletivo)
      end
    end

    describe "with invalid params" do
      it "assigns the alunoturmaanoletivo as @alunoturmaanoletivo" do
        alunoturmaanoletivo = Alunoturmaanoletivo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Alunoturmaanoletivo.any_instance.stub(:save).and_return(false)
        put :update, {:id => alunoturmaanoletivo.to_param, :alunoturmaanoletivo => {}}, valid_session
        assigns(:alunoturmaanoletivo).should eq(alunoturmaanoletivo)
      end

      it "re-renders the 'edit' template" do
        alunoturmaanoletivo = Alunoturmaanoletivo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Alunoturmaanoletivo.any_instance.stub(:save).and_return(false)
        put :update, {:id => alunoturmaanoletivo.to_param, :alunoturmaanoletivo => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested alunoturmaanoletivo" do
      alunoturmaanoletivo = Alunoturmaanoletivo.create! valid_attributes
      expect {
        delete :destroy, {:id => alunoturmaanoletivo.to_param}, valid_session
      }.to change(Alunoturmaanoletivo, :count).by(-1)
    end

    it "redirects to the alunoturmaanoletivos list" do
      alunoturmaanoletivo = Alunoturmaanoletivo.create! valid_attributes
      delete :destroy, {:id => alunoturmaanoletivo.to_param}, valid_session
      response.should redirect_to(alunoturmaanoletivos_url)
    end
  end

end
