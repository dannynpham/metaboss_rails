module MetabossRails
  module Update
    class Uri < Thor
      include Thor::Actions

      desc "Updates URI",
           "Update the metadata URI, keeping the rest of the Data struct the same."
      option :account, type: :string, required: true, desc: "The mint account to update the URI for."
      option :keypair, type: :string, required: true, desc: "The path to the keypair to use."
      option "new-uri", type: :string, required: true, desc: "The new URI with updated metadata."
      # metaboss update uri --keypair <PATH_TO_KEYPAIR> --account <MINT_ACCOUNT> --new-uri <NEW_URI>
      def uri
        method = "update uri"
        args = options.map { |k, v| "--#{k} '#{v}'" }.join(" ")
        puts run Metaboss.command(method, args), capture: true
      end
    end
  end
end
