# frozen_string_literal: true

# Controller for tokens
module JanusAdminMonitorToken
  class TokensController < ApplicationController
    before_action :authenticate_user!
    before_action :set_token, only: [:show, :edit, :update, :destroy]

    # GET /tokens
    def index
      @tokens = RRJ.message_admin('admin::list_tokens').to_hash
      @msg_error = if @tokens['error']['code'] == 490
                     t('tokens.error.disabled_html')
                   else
                     @tokens['error']['reason']
                   end
    end

    # GET /tokens/new
    def new; end

    # POST /tokens
    def create
      RRJ.message_admin('admin::add_token')

      redirect_to index token
    end
  end
end
