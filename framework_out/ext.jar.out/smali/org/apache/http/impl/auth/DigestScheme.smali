.class public Lorg/apache/http/impl/auth/DigestScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HEXADECIMAL:[C

.field private static final NC:Ljava/lang/String; = "00000001"

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I = 0x0

.field private static final QOP_UNKNOWN:I = -0x1


# instance fields
.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private qopVariant:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    .line 121
    iput v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    .line 129
    iput-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 130
    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 4

    .prologue
    .line 532
    const-string v2, "MD5"

    invoke-static {v2}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 534
    .local v1, "md5Helper":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "cnonce":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 537
    return-object v0
.end method

.method private createDigest(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .locals 34
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 280
    const-string v31, "uri"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 281
    .local v29, "uri":Ljava/lang/String;
    const-string v31, "realm"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 282
    .local v21, "realm":Ljava/lang/String;
    const-string v31, "nonce"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 283
    .local v15, "nonce":Ljava/lang/String;
    const-string v31, "methodname"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 284
    .local v14, "method":Ljava/lang/String;
    const-string v31, "algorithm"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "algorithm":Ljava/lang/String;
    if-nez v29, :cond_0

    .line 286
    new-instance v31, Ljava/lang/IllegalStateException;

    const-string v32, "URI may not be null"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 288
    :cond_0
    if-nez v21, :cond_1

    .line 289
    new-instance v31, Ljava/lang/IllegalStateException;

    const-string v32, "Realm may not be null"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 291
    :cond_1
    if-nez v15, :cond_2

    .line 292
    new-instance v31, Ljava/lang/IllegalStateException;

    const-string v32, "Nonce may not be null"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 295
    :cond_2
    if-nez v5, :cond_3

    .line 296
    const-string v5, "MD5"

    .line 299
    :cond_3
    const-string v31, "charset"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "charset":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 301
    const-string v6, "ISO-8859-1"

    .line 304
    :cond_4
    new-instance v20, Ljava/util/HashSet;

    const/16 v31, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 305
    .local v20, "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v17, -0x1

    .line 306
    .local v17, "qop":I
    const-string v31, "qop"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 307
    .local v19, "qoplist":Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 308
    new-instance v27, Ljava/util/StringTokenizer;

    const-string v31, ","

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .local v27, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual/range {v27 .. v27}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 310
    invoke-virtual/range {v27 .. v27}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 311
    .local v30, "variant":Ljava/lang/String;
    sget-object v31, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    .end local v30    # "variant":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move/from16 v31, v0

    if-eqz v31, :cond_9

    const-string v31, "auth-int"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 314
    const/16 v17, 0x1

    .line 322
    .end local v27    # "tok":Ljava/util/StringTokenizer;
    :cond_6
    :goto_1
    const-string v31, "MD5"

    invoke-static/range {v31 .. v31}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 324
    .local v11, "md5Helper":Ljava/security/MessageDigest;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v28

    .line 325
    .local v28, "uname":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v16

    .line 328
    .local v16, "pwd":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    add-int/lit8 v31, v31, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 329
    .local v24, "tmp":Ljava/lang/StringBuilder;
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const/16 v31, 0x3a

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const/16 v31, 0x3a

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "a1":Ljava/lang/String;
    const-string v31, "MD5-sess"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 343
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "cnonce":Ljava/lang/String;
    invoke-static {v3, v6}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v25

    .line 346
    .local v25, "tmp2":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    add-int/lit8 v31, v31, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 347
    .local v26, "tmp3":Ljava/lang/StringBuilder;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const/16 v31, 0x3a

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const/16 v31, 0x3a

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    .end local v7    # "cnonce":Ljava/lang/String;
    .end local v25    # "tmp2":Ljava/lang/String;
    .end local v26    # "tmp3":Ljava/lang/StringBuilder;
    :cond_7
    invoke-static {v3, v6}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v12

    .line 358
    .local v12, "md5a1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 359
    .local v4, "a2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 361
    const/4 v8, 0x0

    .line 362
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move/from16 v31, v0

    if-eqz v31, :cond_8

    .line 363
    check-cast p2, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 365
    :cond_8
    if-eqz v8, :cond_d

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v31

    if-nez v31, :cond_d

    .line 367
    const-string v31, "auth"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 368
    const/16 v17, 0x2

    .line 369
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x3a

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 389
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    :goto_2
    invoke-static {v4}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v13

    .line 393
    .local v13, "md5a2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    move/from16 v31, v0

    if-nez v31, :cond_10

    .line 394
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 395
    .local v25, "tmp2":Ljava/lang/StringBuilder;
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const/16 v31, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const/16 v31, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 421
    .local v23, "serverDigestValue":Ljava/lang/String;
    :goto_3
    invoke-static/range {v23 .. v23}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v22

    .line 424
    .local v22, "serverDigest":Ljava/lang/String;
    return-object v22

    .line 315
    .end local v3    # "a1":Ljava/lang/String;
    .end local v4    # "a2":Ljava/lang/String;
    .end local v11    # "md5Helper":Ljava/security/MessageDigest;
    .end local v12    # "md5a1":Ljava/lang/String;
    .end local v13    # "md5a2":Ljava/lang/String;
    .end local v16    # "pwd":Ljava/lang/String;
    .end local v22    # "serverDigest":Ljava/lang/String;
    .end local v23    # "serverDigestValue":Ljava/lang/String;
    .end local v24    # "tmp":Ljava/lang/StringBuilder;
    .end local v25    # "tmp2":Ljava/lang/StringBuilder;
    .end local v28    # "uname":Ljava/lang/String;
    .restart local v27    # "tok":Ljava/util/StringTokenizer;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    :cond_9
    const-string v31, "auth"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 316
    const/16 v17, 0x2

    goto/16 :goto_1

    .line 319
    .end local v27    # "tok":Ljava/util/StringTokenizer;
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 353
    .restart local v3    # "a1":Ljava/lang/String;
    .restart local v11    # "md5Helper":Ljava/security/MessageDigest;
    .restart local v16    # "pwd":Ljava/lang/String;
    .restart local v24    # "tmp":Ljava/lang/StringBuilder;
    .restart local v28    # "uname":Ljava/lang/String;
    :cond_b
    const-string v31, "MD5"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_7

    .line 354
    new-instance v31, Lorg/apache/http/auth/AuthenticationException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Unhandled algorithm "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " requested"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 371
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local v4    # "a2":Ljava/lang/String;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v12    # "md5a1":Ljava/lang/String;
    :cond_c
    new-instance v31, Lorg/apache/http/auth/AuthenticationException;

    const-string v32, "Qop auth-int cannot be used with a non-repeatable entity"

    invoke-direct/range {v31 .. v32}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 375
    :cond_d
    new-instance v9, Lorg/apache/http/impl/auth/HttpEntityDigester;

    invoke-direct {v9, v11}, Lorg/apache/http/impl/auth/HttpEntityDigester;-><init>(Ljava/security/MessageDigest;)V

    .line 377
    .local v9, "entityDigester":Lorg/apache/http/impl/auth/HttpEntityDigester;
    if-eqz v8, :cond_e

    .line 378
    :try_start_0
    invoke-interface {v8, v9}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 380
    :cond_e
    invoke-virtual {v9}, Lorg/apache/http/impl/auth/HttpEntityDigester;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x3a

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x3a

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Lorg/apache/http/impl/auth/HttpEntityDigester;->getDigest()[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 381
    :catch_0
    move-exception v10

    .line 382
    .local v10, "ex":Ljava/io/IOException;
    new-instance v31, Lorg/apache/http/auth/AuthenticationException;

    const-string v32, "I/O error reading entity content"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v10}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v31

    .line 387
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "entityDigester":Lorg/apache/http/impl/auth/HttpEntityDigester;
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    :cond_f
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x3a

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 402
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local v13    # "md5a2":Ljava/lang/String;
    :cond_10
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v18

    .line 403
    .local v18, "qopOption":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v7

    .line 405
    .restart local v7    # "cnonce":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    const-string v32, "00000001"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    add-int/lit8 v31, v31, 0x5

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 407
    .restart local v25    # "tmp2":Ljava/lang/StringBuilder;
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const/16 v31, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const/16 v31, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    const-string v31, "00000001"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const/16 v31, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const/16 v31, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const/16 v31, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "serverDigestValue":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method private createDigestHeader(Lorg/apache/http/auth/Credentials;Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 15
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 439
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v12, 0x80

    invoke-direct {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 440
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->isProxy()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 441
    const-string v12, "Proxy-Authorization"

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 445
    :goto_0
    const-string v12, ": Digest "

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 447
    const-string v12, "uri"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 448
    .local v11, "uri":Ljava/lang/String;
    const-string v12, "realm"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, "realm":Ljava/lang/String;
    const-string v12, "nonce"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "nonce":Ljava/lang/String;
    const-string v12, "opaque"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, "opaque":Ljava/lang/String;
    move-object/from16 v9, p2

    .line 452
    .local v9, "response":Ljava/lang/String;
    const-string v12, "algorithm"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "algorithm":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v10

    .line 456
    .local v10, "uname":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    const/16 v12, 0x14

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 457
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "username"

    invoke-direct {v12, v13, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "realm"

    invoke-direct {v12, v13, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "nonce"

    invoke-direct {v12, v13, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "uri"

    invoke-direct {v12, v13, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "response"

    invoke-direct {v12, v13, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget v12, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    if-eqz v12, :cond_0

    .line 464
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "qop"

    invoke-direct {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "nc"

    const-string v14, "00000001"

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "cnonce"

    invoke-direct {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_0
    if-eqz v0, :cond_1

    .line 469
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "algorithm"

    invoke-direct {v12, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_1
    if-eqz v5, :cond_2

    .line 472
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "opaque"

    invoke-direct {v12, v13, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_8

    .line 476
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/message/BasicNameValuePair;

    .line 477
    .local v6, "param":Lorg/apache/http/message/BasicNameValuePair;
    if-lez v2, :cond_3

    .line 478
    const-string v12, ", "

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 480
    :cond_3
    const-string v12, "nc"

    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "qop"

    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "algorithm"

    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_4
    const/4 v3, 0x1

    .line 483
    .local v3, "noQuotes":Z
    :goto_2
    sget-object v13, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    if-nez v3, :cond_7

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v1, v6, v12}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 443
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "noQuotes":Z
    .end local v4    # "nonce":Ljava/lang/String;
    .end local v5    # "opaque":Ljava/lang/String;
    .end local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v8    # "realm":Ljava/lang/String;
    .end local v9    # "response":Ljava/lang/String;
    .end local v10    # "uname":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    :cond_5
    const-string v12, "Authorization"

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "nonce":Ljava/lang/String;
    .restart local v5    # "opaque":Ljava/lang/String;
    .restart local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .restart local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v8    # "realm":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    .restart local v10    # "uname":Ljava/lang/String;
    .restart local v11    # "uri":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 483
    .restart local v3    # "noQuotes":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 486
    .end local v3    # "noQuotes":Z
    .end local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    :cond_8
    new-instance v12, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v12, v1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v12
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "digAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    .prologue
    .line 262
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "binaryData"    # [B

    .prologue
    const/16 v6, 0x10

    .line 507
    array-length v4, p0

    if-eq v4, v6, :cond_0

    .line 508
    const/4 v4, 0x0

    .line 519
    :goto_0
    return-object v4

    .line 511
    :cond_0
    const/16 v4, 0x20

    new-array v0, v4, [C

    .line 512
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 513
    aget-byte v4, p0, v2

    and-int/lit8 v3, v4, 0xf

    .line 514
    .local v3, "low":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v1, v4, 0x4

    .line 515
    .local v1, "high":I
    mul-int/lit8 v4, v2, 0x2

    sget-object v5, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v5, v5, v1

    aput-char v5, v0, v4

    .line 516
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v5, v5, v3

    aput-char v5, v0, v4

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 519
    .end local v1    # "high":I
    .end local v3    # "low":I
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lorg/apache/http/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method private getQopVariantString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 491
    iget v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 492
    const-string v0, "auth-int"

    .line 496
    .local v0, "qopOption":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 494
    .end local v0    # "qopOption":Ljava/lang/String;
    :cond_0
    const-string v0, "auth"

    .restart local v0    # "qopOption":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 5
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Credentials may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_0
    if-nez p2, :cond_1

    .line 244
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP request may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "methodname"

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "uri"

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v2, "charset"

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 252
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/auth/params/AuthParams;->getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "charset"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/auth/DigestScheme;->createDigest(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "digest":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lorg/apache/http/impl/auth/DigestScheme;->createDigestHeader(Lorg/apache/http/auth/Credentials;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    return-object v2
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 185
    const-string v1, "stale"

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "s":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    .line 189
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 6
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 143
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 145
    const-string v4, "realm"

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 146
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v5, "missing realm in challange"

    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :cond_0
    const-string v4, "nonce"

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 149
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v5, "missing nonce in challange"

    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_1
    const/4 v2, 0x0

    .line 154
    .local v2, "unsupportedQop":Z
    const-string v4, "qop"

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "qop":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 156
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v1, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "variant":Ljava/lang/String;
    const-string v4, "auth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    const/4 v4, 0x2

    iput v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    .line 170
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_5

    iget v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    if-nez v4, :cond_5

    .line 171
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v5, "None of the qop methods is supported"

    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    .restart local v1    # "tok":Ljava/util/StringTokenizer;
    .restart local v3    # "variant":Ljava/lang/String;
    :cond_3
    const-string v4, "auth-int"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 163
    iput v5, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    goto :goto_0

    .line 165
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 175
    iput-boolean v5, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 176
    return-void
.end method
