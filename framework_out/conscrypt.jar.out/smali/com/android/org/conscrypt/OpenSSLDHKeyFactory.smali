.class public Lcom/android/org/conscrypt/OpenSSLDHKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLDHKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
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
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    instance-of v0, p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;

    check-cast p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;-><init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V

    .line 62
    :goto_0
    return-object v0

    .line 61
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_2

    .line 62
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0

    .line 65
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use DHPrivateKeySpec or PKCS8EncodedKeySpec; was "

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
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    instance-of v0, p1, Ljavax/crypto/spec/DHPublicKeySpec;

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDHPublicKey;

    check-cast p1, Ljavax/crypto/spec/DHPublicKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLDHPublicKey;-><init>(Ljavax/crypto/spec/DHPublicKeySpec;)V

    .line 47
    :goto_0
    return-object v0

    .line 46
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_2

    .line 47
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    .line 49
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use DHPublicKeySpec or X509EncodedKeySpec; was "

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
    .locals 7
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
    .line 72
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 73
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "key == null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_0
    if-nez p2, :cond_1

    .line 77
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "keySpec == null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_1
    const-string v3, "DH"

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 81
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Key must be a DH key"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_2
    instance-of v3, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v3, :cond_3

    const-class v3, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 85
    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 86
    .local v0, "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    .line 87
    .local v2, "params":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v3, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 127
    .end local v0    # "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    :goto_0
    return-object v3

    .line 88
    :cond_3
    instance-of v3, p1, Ljava/security/PublicKey;

    if-eqz v3, :cond_6

    const-class v3, Ljavax/crypto/spec/DHPublicKeySpec;

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

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/OpenSSLDHKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 94
    .restart local v0    # "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    .line 95
    .restart local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v3, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 96
    .end local v0    # "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v1    # "encoded":[B
    .end local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    :cond_6
    instance-of v3, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v3, :cond_7

    const-class v3, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 97
    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 98
    .local v0, "dhKey":Ljavax/crypto/interfaces/DHPrivateKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    .line 99
    .restart local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v3, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 100
    .end local v0    # "dhKey":Ljavax/crypto/interfaces/DHPrivateKey;
    .end local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    :cond_7
    instance-of v3, p1, Ljava/security/PrivateKey;

    if-eqz v3, :cond_a

    const-class v3, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 101
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 102
    .restart local v1    # "encoded":[B
    const-string v3, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_9

    .line 103
    :cond_8
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Not a valid PKCS#8 encoding"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_9
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/OpenSSLDHKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 107
    .restart local v0    # "dhKey":Ljavax/crypto/interfaces/DHPrivateKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    .line 108
    .restart local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v3, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "dhKey":Ljavax/crypto/interfaces/DHPrivateKey;
    .end local v1    # "encoded":[B
    .end local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    :cond_a
    instance-of v3, p1, Ljava/security/PrivateKey;

    if-eqz v3, :cond_d

    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 111
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 112
    .restart local v1    # "encoded":[B
    const-string v3, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 113
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

    .line 115
    :cond_b
    if-nez v1, :cond_c

    .line 116
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Key is not encodable"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_c
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto/16 :goto_0

    .line 119
    .end local v1    # "encoded":[B
    :cond_d
    instance-of v3, p1, Ljava/security/PublicKey;

    if-eqz v3, :cond_10

    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 120
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 121
    .restart local v1    # "encoded":[B
    const-string v3, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 122
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

    .line 124
    :cond_e
    if-nez v1, :cond_f

    .line 125
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Key is not encodable"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_f
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto/16 :goto_0

    .line 129
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
    .locals 11
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v8, Ljava/security/InvalidKeyException;

    const-string v9, "key == null"

    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 139
    :cond_0
    instance-of v8, p1, Lcom/android/org/conscrypt/OpenSSLDHPublicKey;

    if-nez v8, :cond_1

    instance-of v8, p1, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;

    if-eqz v8, :cond_2

    .line 185
    .end local p1    # "key":Ljava/security/Key;
    :cond_1
    :goto_0
    return-object p1

    .line 141
    .restart local p1    # "key":Ljava/security/Key;
    :cond_2
    instance-of v8, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v8, :cond_3

    move-object v0, p1

    .line 142
    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 144
    .local v0, "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v7

    .line 146
    .local v7, "y":Ljava/math/BigInteger;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v5

    .line 147
    .local v5, "params":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 148
    .local v4, "p":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 151
    .local v3, "g":Ljava/math/BigInteger;
    :try_start_0
    new-instance v8, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-direct {v8, v7, v4, v3}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v8}, Lcom/android/org/conscrypt/OpenSSLDHKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v8, Ljava/security/InvalidKeyException;

    invoke-direct {v8, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 155
    .end local v0    # "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "g":Ljava/math/BigInteger;
    .end local v4    # "p":Ljava/math/BigInteger;
    .end local v5    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local v7    # "y":Ljava/math/BigInteger;
    :cond_3
    instance-of v8, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v8, :cond_4

    move-object v0, p1

    .line 156
    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 158
    .local v0, "dhKey":Ljavax/crypto/interfaces/DHPrivateKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    .line 160
    .local v6, "x":Ljava/math/BigInteger;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v5

    .line 161
    .restart local v5    # "params":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 162
    .restart local v4    # "p":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 165
    .restart local v3    # "g":Ljava/math/BigInteger;
    :try_start_1
    new-instance v8, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-direct {v8, v6, v4, v3}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v8}, Lcom/android/org/conscrypt/OpenSSLDHKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_0

    .line 166
    :catch_1
    move-exception v1

    .line 167
    .restart local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v8, Ljava/security/InvalidKeyException;

    invoke-direct {v8, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 169
    .end local v0    # "dhKey":Ljavax/crypto/interfaces/DHPrivateKey;
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "g":Ljava/math/BigInteger;
    .end local v4    # "p":Ljava/math/BigInteger;
    .end local v5    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local v6    # "x":Ljava/math/BigInteger;
    :cond_4
    instance-of v8, p1, Ljava/security/PrivateKey;

    if-eqz v8, :cond_6

    const-string v8, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 170
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 171
    .local v2, "encoded":[B
    if-nez v2, :cond_5

    .line 172
    new-instance v8, Ljava/security/InvalidKeyException;

    const-string v9, "Key does not support encoding"

    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 175
    :cond_5
    :try_start_2
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v8, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v8}, Lcom/android/org/conscrypt/OpenSSLDHKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p1

    goto :goto_0

    .line 176
    :catch_2
    move-exception v1

    .line 177
    .restart local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v8, Ljava/security/InvalidKeyException;

    invoke-direct {v8, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 179
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v2    # "encoded":[B
    :cond_6
    instance-of v8, p1, Ljava/security/PublicKey;

    if-eqz v8, :cond_8

    const-string v8, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 180
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 181
    .restart local v2    # "encoded":[B
    if-nez v2, :cond_7

    .line 182
    new-instance v8, Ljava/security/InvalidKeyException;

    const-string v9, "Key does not support encoding"

    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 185
    :cond_7
    :try_start_3
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v8}, Lcom/android/org/conscrypt/OpenSSLDHKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object p1

    goto/16 :goto_0

    .line 186
    :catch_3
    move-exception v1

    .line 187
    .restart local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v8, Ljava/security/InvalidKeyException;

    invoke-direct {v8, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 190
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v2    # "encoded":[B
    :cond_8
    new-instance v8, Ljava/security/InvalidKeyException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Key must be DH public or private key; was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
