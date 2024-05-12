{ buildGoModule
, fetchFromGitHub
}:

buildGoModule {
  pname = "gojasm";
  version = "1.5.0";

  src = fetchFromGitHub {
    owner = "BlackNovaTech";
    repo = "goJASM";
    rev = "890c51c0e147d7dfc821712162bdbc7b2093038e";
    sha256 = "sha256-ziOrQWqBgGfAx6BzYCIGK8cBuSan1D2qfeU+K7xbCh8=";
  };

  vendorHash = "sha256-zBv3xX/5NQ9kFYzBYUdImBa9TID8dHYPkjZp5xxOxtw=";
}
