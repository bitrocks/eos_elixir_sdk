defmodule EosElixirSdk.Crypto do
  @secp256k1_key_bytes 32

  def generate_keypair(seed \\ nil) do
    private = seed || :crypto.strong_rand_bytes(@secp256_key_bytes)
    public = private_to_public(private)
    %{private: private, public: public}
  end

  def private_to_public(private) do
    {:ok, public} = :libsecp256k1.ec_pubkey_create(private, :compressed)
    public
  end

  # todo: base58check 
  def public_to_address(public, prefix \\ "EOS") do
  end
end
