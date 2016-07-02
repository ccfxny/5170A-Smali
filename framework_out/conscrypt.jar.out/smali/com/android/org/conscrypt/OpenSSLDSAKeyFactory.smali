.class public Lcom/android/org/conscrypt/OpenSSLDSAKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLDSAKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    instance-of v0, p1, Ljava/security/spec/DSAPrivateKeySpec;

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;

    check-cast p1, Ljava/security/spec/DSAPrivateKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;-><init>(Ljava/security/spec/DSAPrivateKeySpec;)V

    .line 61
    :goto_0
    return-object v0

    .line 60
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_2

    .line 61
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/16 v0, 0x74

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0

    .line 64
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use DSAPrivateKeySpec or PKCS8EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    instance-of v0, p1, Ljava/security/spec/DSAPublicKeySpec;

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;

    check-cast p1, Ljava/security/spec/DSAPublicKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;-><init>(Ljava/security/spec/DSAPublicKeySpec;)V

    .line 46
    :goto_0
    return-object v0

    .line 45
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_2

    .line 46
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/16 v0, 0x74

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    .line 48
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use DSAPublicKeySpec or X509EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 8
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 72
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "key == null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_0
    if-nez p2, :cond_1

    .line 76
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "keySpec == null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_1
    const-string v3, "DSA"

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Key must be a DSA key"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v3, :cond_3

    const-class v3, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 84
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 85
    .local v0, "dsaKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 86
    .local v2, "params":Ljava/security/interfaces/DSAParams;
    new-instance v3, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 132
    .end local v0    # "dsaKey":Ljava/security/interfaces/DSAPublicKey;
    .end local v2    # "params":Ljava/security/interfaces/DSAParams;
    :goto_0
    return-object v3

    .line 88
    :cond_3
    instance-of v3, p1, Ljava/security/PublicKey;

    if-eqz v3, :cond_6

    const-class v3, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 89
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 90
    .local v1, "encoded":[B
    const-string v3, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_5

    .line 91
    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Not a valid X.509 encoding"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_5
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/OpenSSLDSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 95
    .restart local v0    # "dsaKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 96
    .restart local v2    # "params":Ljava/security/interfaces/DSAParams;
    new-instance v3, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 98
    .end local v0    # "dsaKey":Ljava/security/interfaces/DSAPublicKey;
    .end local v1    # "encoded":[B
    .end local v2    # "params":Ljava/security/interfaces/DSAParams;
    :cond_6
    instance-of v3, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v3, :cond_7

    const-class v3, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 100
    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    .line 101
    .local v0, "dsaKey":Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 102
    .restart local v2    # "params":Ljava/security/interfaces/DSAParams;
    new-instance v3, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 104
    .end local v0    # "dsaKey":Ljava/security/interfaces/DSAPrivateKey;
    .end local v2    # "params":Ljava/security/interfaces/DSAParams;
    :cond_7
    instance-of v3, p1, Ljava/security/PrivateKey;

    if-eqz v3, :cond_a

    const-class v3, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 105
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 106
    .restart local v1    # "encoded":[B
    const-string v3, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_9

    .line 107
    :cond_8
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Not a valid PKCS#8 encoding"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    :cond_9
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/OpenSSLDSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    .line 111
    .restart local v0    # "dsaKey":Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 112
    .restart local v2    # "params":Ljava/security/interfaces/DSAParams;
    new-instance v3, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "dsaKey":Ljava/security/interfaces/DSAPrivateKey;
    .end local v1    # "encoded":[B
    .end local v2    # "params":Ljava/security/interfaces/DSAParams;
    :cond_a
    instance-of v3, p1, Ljava/security/PrivateKey;

    if-eqz v3, :cond_d

    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 116
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 117
    .restart local v1    # "encoded":[B
    const-string v3, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 118
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoding type must be PKCS#8; was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_b
    if-nez v1, :cond_c

    .line 121
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Key is not encodable"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_c
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto/16 :goto_0

    .line 124
    .end local v1    # "encoded":[B
    :cond_d
    instance-of v3, p1, Ljava/security/PublicKey;

    if-eqz v3, :cond_10

    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 125
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 126
    .restart local v1    # "encoded":[B
    const-string v3, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 127
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoding type must be X.509; was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_e
    if-nez v1, :cond_f

    .line 130
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Key is not encodable"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_f
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "encoded":[B
    :cond_10
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported key type and key spec combination; key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", keySpec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 12
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v9, Ljava/security/InvalidKeyException;

    const-string v10, "key == null"

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 144
    :cond_0
    instance-of v9, p1, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;

    if-nez v9, :cond_1

    instance-of v9, p1, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;

    if-eqz v9, :cond_2

    .line 192
    .end local p1    # "key":Ljava/security/Key;
    :cond_1
    :goto_0
    return-object p1

    .line 146
    .restart local p1    # "key":Ljava/security/Key;
    :cond_2
    instance-of v9, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v9, :cond_3

    move-object v0, p1

    .line 147
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 149
    .local v0, "dsaKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v8

    .line 151
    .local v8, "y":Ljava/math/BigInteger;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v5

    .line 152
    .local v5, "params":Ljava/security/interfaces/DSAParams;
    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 153
    .local v4, "p":Ljava/math/BigInteger;
    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 154
    .local v6, "q":Ljava/math/BigInteger;
    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 157
    .local v3, "g":Ljava/math/BigInteger;
    :try_start_0
    new-instance v9, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v9, v8, v4, v6, v3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLDSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-direct {v9, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 161
    .end local v0    # "dsaKey":Ljava/security/interfaces/DSAPublicKey;
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "g":Ljava/math/BigInteger;
    .end local v4    # "p":Ljava/math/BigInteger;
    .end local v5    # "params":Ljava/security/interfaces/DSAParams;
    .end local v6    # "q":Ljava/math/BigInteger;
    .end local v8    # "y":Ljava/math/BigInteger;
    :cond_3
    instance-of v9, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v9, :cond_4

    move-object v0, p1

    .line 162
    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    .line 164
    .local v0, "dsaKey":Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v7

    .line 166
    .local v7, "x":Ljava/math/BigInteger;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v5

    .line 167
    .restart local v5    # "params":Ljava/security/interfaces/DSAParams;
    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 168
    .restart local v4    # "p":Ljava/math/BigInteger;
    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 169
    .restart local v6    # "q":Ljava/math/BigInteger;
    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 172
    .restart local v3    # "g":Ljava/math/BigInteger;
    :try_start_1
    new-instance v9, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v9, v7, v4, v6, v3}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLDSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_0

    .line 173
    :catch_1
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-direct {v9, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 176
    .end local v0    # "dsaKey":Ljava/security/interfaces/DSAPrivateKey;
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "g":Ljava/math/BigInteger;
    .end local v4    # "p":Ljava/math/BigInteger;
    .end local v5    # "params":Ljava/security/interfaces/DSAParams;
    .end local v6    # "q":Ljava/math/BigInteger;
    .end local v7    # "x":Ljava/math/BigInteger;
    :cond_4
    instance-of v9, p1, Ljava/security/PrivateKey;

    if-eqz v9, :cond_6

    const-string v9, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 177
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 178
    .local v2, "encoded":[B
    if-nez v2, :cond_5

    .line 179
    new-instance v9, Ljava/security/InvalidKeyException;

    const-string v10, "Key does not support encoding"

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 182
    :cond_5
    :try_start_2
    new-instance v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v9, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLDSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p1

    goto :goto_0

    .line 183
    :catch_2
    move-exception v1

    .line 184
    .restart local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-direct {v9, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 186
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v2    # "encoded":[B
    :cond_6
    instance-of v9, p1, Ljava/security/PublicKey;

    if-eqz v9, :cond_8

    const-string v9, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 187
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 188
    .restart local v2    # "encoded":[B
    if-nez v2, :cond_7

    .line 189
    new-instance v9, Ljava/security/InvalidKeyException;

    const-string v10, "Key does not support encoding"

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 192
    :cond_7
    :try_start_3
    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v9, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLDSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object p1

    goto/16 :goto_0

    .line 193
    :catch_3
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-direct {v9, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 197
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v2    # "encoded":[B
    :cond_8
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Key must be DSA public or private key; was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
