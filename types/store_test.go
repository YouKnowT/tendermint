package types

import (
	"bytes"
	"testing"

	"go.dedis.ch/kyber/pairing/bn256"
)

func TestBLSKeySerialization(t *testing.T) {
	pubPoly, _ := LoadPubKey(TestnetMasterPubKey, 4)
	share, _ := TestnetShares[0].Deserialize()

	key := &BLSKey{
		N:            4,
		MasterPubKey: pubPoly,
		Share:        share,
	}

	keyJSON, err := NewBLSKeyJSON(key)
	if err != nil {
		t.Errorf("failed to create BLSKeyJSON object: %v", err)
		return
	}

	key2, err2 := keyJSON.Deserialize()
	if err2 != nil {
		t.Errorf("failed to deserialize BLSKeyJSON object: %v", err2)
		return
	}

	if !key.IsEqual(key2) {
		t.Errorf("Object before the serialization and object after the seriailization are not equal")
	}
}

func (key1 *BLSKey) IsEqual(key2 *BLSKey) bool {
	if key1.N != key2.N ||
		!key1.MasterPubKey.Equal(key2.MasterPubKey) ||
		!key1.Share.IsEqual(key2.Share) {
		return false
	}
	return true
}

func (share1 *BLSShare) IsEqual(share2 *BLSShare) bool {
	suite := bn256.NewSuite()
	pubHash1 := share1.Pub.Hash(suite)
	pubHash2 := share2.Pub.Hash(suite)
	privHash1 := share1.Priv.Hash(suite)
	privHash2 := share2.Priv.Hash(suite)
	if share1.ID != share2.ID ||
		!bytes.Equal(pubHash1, pubHash2) ||
		!bytes.Equal(privHash1, privHash2) {
		return false
	}
	return true
}