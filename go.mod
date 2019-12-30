module github.com/tendermint/tendermint

go 1.12

require (
	github.com/ChainSafe/go-schnorrkel v0.0.0-20191204112926-74e22bf42a85
	github.com/Workiva/go-datastructures v1.0.50
	github.com/btcsuite/btcd v0.0.0-20190115013929-ed77733ec07d
	github.com/btcsuite/btcutil v0.0.0-20180706230648-ab6388e0c60a
	github.com/corestario/dkglib v0.0.0-00010101000000-000000000000
	github.com/fortytw2/leaktest v1.3.0
	github.com/go-kit/kit v0.9.0
	github.com/go-logfmt/logfmt v0.4.0
	github.com/gogo/protobuf v1.3.0
	github.com/golang/protobuf v1.3.2
	github.com/gorilla/websocket v1.4.1
	github.com/gtank/merlin v0.1.1-0.20191105220539-8318aed1a79f
	github.com/libp2p/go-buffer-pool v0.0.2
	github.com/magiconair/properties v1.8.1
	github.com/mitchellh/gox v1.0.1 // indirect
	github.com/pkg/errors v0.8.1
	github.com/prometheus/client_golang v0.9.3
	github.com/prometheus/common v0.4.0
	github.com/rcrowley/go-metrics v0.0.0-20180503174638-e2704e165165
	github.com/rs/cors v1.7.0
	github.com/sirupsen/logrus v1.2.0
	github.com/snikch/goodman v0.0.0-20171125024755-10e37e294daa
	github.com/spf13/cobra v0.0.5
	github.com/spf13/viper v1.6.1
	github.com/square/certstrap v1.2.0 // indirect
	github.com/stretchr/testify v1.4.0
	github.com/tendermint/go-amino v0.15.1
	github.com/tendermint/tm-db v0.3.0
	golang.org/x/crypto v0.0.0-20190313024323-a1f597ede03a
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7
	google.golang.org/grpc v1.25.1
)

replace (
	github.com/corestario/cosmos-utils/client => ./../cosmos-utils/client
	github.com/corestario/dkglib => ./../dkglib
	github.com/tendermint/tendermint => ./
)
