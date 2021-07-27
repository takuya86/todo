module Api
  module V1
    class CompaniesController < ApplicationController
      def index
        # 簡略化しているためシリアライズしていませんが、実装時にしてください
        render json: { companies: Company.all.to_json }
      end
    end
  end
end
