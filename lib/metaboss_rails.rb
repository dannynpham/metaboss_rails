# frozen_string_literal: true

require "thor"
require_relative "metaboss_rails/version"
require "metaboss_rails/update/uri"

module MetabossRails
  class Error < StandardError; end

  class Metaboss < Thor
    EXE_PATH = File.expand_path("exe/metaboss")

    def self.command(method, args)
      "#{EXE_PATH} #{method} #{args}"
    end

    desc "Update various aspects of an NFT.",
         "Warning: These commands modify your NFT and are for advanced users. Use with caution."
    subcommand "update", MetabossRails::Update::Uri
  end
end
