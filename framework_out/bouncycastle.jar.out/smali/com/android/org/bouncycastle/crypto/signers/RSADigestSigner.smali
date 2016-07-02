.class public Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;
.super Ljava/lang/Object;
.source "RSADigestSigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Signer;


# static fields
.field private static final oidMap:Ljava/util/Hashtable;


# instance fields
.field private final algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private forSigning:Z

.field private final rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "MD5"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 2
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    .prologue
    .line 64
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p2, "digestOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 71
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    return-void
.end method

.method private derEncode([B)[B
    .locals 2
    .param p1, "hash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 240
    .local v0, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public generateSignature()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/CryptoException;,
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    if-nez v3, :cond_0

    .line 151
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "RSADigestSigner not initialised for signature generation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 155
    .local v2, "hash":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 159
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B

    move-result-object v0

    .line 160
    .local v0, "data":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-interface {v3, v0, v4, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 162
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/crypto/CryptoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to encode signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "withRSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "parameters"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    .line 98
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 100
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 107
    .local v0, "k":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "signing requires private key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "k":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p2

    .line 104
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0    # "k":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 112
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "verification requires public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->reset()V

    .line 119
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 120
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 232
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 129
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "length"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 140
    return-void
.end method

.method public verifySignature([B)Z
    .locals 13
    .param p1, "signature"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 175
    iget-boolean v10, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    if-eqz v10, :cond_0

    .line 177
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "RSADigestSigner not initialised for verification"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 180
    :cond_0
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    new-array v3, v10, [B

    .line 182
    .local v3, "hash":[B
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v10, v3, v9}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 189
    :try_start_0
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v11, 0x0

    array-length v12, p1

    invoke-interface {v10, p1, v11, v12}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v6

    .line 190
    .local v6, "sig":[B
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 197
    .local v1, "expected":[B
    array-length v10, v6

    array-length v11, v1

    if-ne v10, v11, :cond_2

    .line 199
    invoke-static {v6, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    .line 225
    .end local v1    # "expected":[B
    .end local v6    # "sig":[B
    :cond_1
    :goto_0
    return v9

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "expected":[B
    .restart local v6    # "sig":[B
    :cond_2
    array-length v10, v6

    array-length v11, v1

    add-int/lit8 v11, v11, -0x2

    if-ne v10, v11, :cond_1

    .line 203
    array-length v10, v6

    array-length v11, v3

    sub-int/2addr v10, v11

    add-int/lit8 v7, v10, -0x2

    .line 204
    .local v7, "sigOffset":I
    array-length v10, v1

    array-length v11, v3

    sub-int/2addr v10, v11

    add-int/lit8 v2, v10, -0x2

    .line 206
    .local v2, "expectedOffset":I
    aget-byte v10, v1, v8

    add-int/lit8 v10, v10, -0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    .line 207
    const/4 v10, 0x3

    aget-byte v11, v1, v10

    add-int/lit8 v11, v11, -0x2

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 209
    const/4 v5, 0x0

    .line 211
    .local v5, "nonEqual":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v3

    if-ge v4, v10, :cond_3

    .line 213
    add-int v10, v7, v4

    aget-byte v10, v6, v10

    add-int v11, v2, v4

    aget-byte v11, v1, v11

    xor-int/2addr v10, v11

    or-int/2addr v5, v10

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_4

    .line 218
    aget-byte v10, v6, v4

    aget-byte v11, v1, v4

    xor-int/2addr v10, v11

    or-int/2addr v5, v10

    .line 216
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 221
    :cond_4
    if-nez v5, :cond_5

    :goto_3
    move v9, v8

    goto :goto_0

    :cond_5
    move v8, v9

    goto :goto_3
.end method
