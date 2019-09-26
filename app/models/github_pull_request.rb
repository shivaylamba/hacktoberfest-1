# frozen_string_literal: true

class GithubPullRequest
  def initialize(hash)
    @graphql_hash = hash
  end

  def id
    @graphql_hash.id
  end

  def title
    @graphql_hash.title
  end

  def body
    @graphql_hash.body
  end

  def url
    @graphql_hash.url
  end

  def created_at
    @graphql_hash.createdAt
  end

  def label_names
    @graphql_hash.labels.edges.map do |e|
      e.node.name.downcase
    end
  end

  def repository_name
    url_arr = url.split('/')
    repo = url_arr[3] + '/' + url_arr[4]
  end
end
