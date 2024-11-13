class Avo::Resources::User < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id, hide_on: :forms
    field :name, as: :text
    field :uuid, as: :text, hide_on: :forms
    field :posts, as: :has_many
  end
end
