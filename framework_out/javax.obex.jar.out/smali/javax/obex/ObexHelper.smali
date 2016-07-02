.class public final Ljavax/obex/ObexHelper;
.super Ljava/lang/Object;
.source "ObexHelper.java"


# static fields
.field public static final BASE_PACKET_LENGTH:I = 0x3

.field public static final MAX_CLIENT_PACKET_SIZE:I = 0xfc00

.field public static final MAX_PACKET_SIZE_INT:I = 0xfffe

.field public static final OBEX_AUTH_REALM_CHARSET_ASCII:I = 0x0

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_1:I = 0x1

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_2:I = 0x2

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_3:I = 0x3

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_4:I = 0x4

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_5:I = 0x5

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_6:I = 0x6

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_7:I = 0x7

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_8:I = 0x8

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_9:I = 0x9

.field public static final OBEX_AUTH_REALM_CHARSET_UNICODE:I = 0xff

.field public static final OBEX_OPCODE_ABORT:I = 0xff

.field public static final OBEX_OPCODE_CONNECT:I = 0x80

.field public static final OBEX_OPCODE_DISCONNECT:I = 0x81

.field public static final OBEX_OPCODE_GET:I = 0x3

.field public static final OBEX_OPCODE_GET_FINAL:I = 0x83

.field public static final OBEX_OPCODE_PUT:I = 0x2

.field public static final OBEX_OPCODE_PUT_FINAL:I = 0x82

.field public static final OBEX_OPCODE_RESERVED:I = 0x4

.field public static final OBEX_OPCODE_RESERVED_FINAL:I = 0x84

.field public static final OBEX_OPCODE_SETPATH:I = 0x85


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static computeAuthenticationChallenge([BLjava/lang/String;ZZ)[B
    .locals 9
    .param p0, "nonce"    # [B
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "access"    # Z
    .param p3, "userID"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x10

    const/4 v6, 0x1

    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 955
    const/4 v0, 0x0

    .line 957
    .local v0, "authChall":[B
    array-length v1, p0

    if-eq v1, v7, :cond_0

    .line 958
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Nonce must be 16 bytes long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 979
    :cond_0
    if-nez p1, :cond_3

    .line 980
    const/16 v1, 0x15

    new-array v0, v1, [B

    .line 993
    :goto_0
    aput-byte v4, v0, v4

    .line 994
    aput-byte v7, v0, v6

    .line 995
    invoke-static {p0, v4, v0, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 998
    const/16 v1, 0x12

    aput-byte v6, v0, v1

    .line 999
    const/16 v1, 0x13

    aput-byte v6, v0, v1

    .line 1000
    aput-byte v4, v0, v5

    .line 1002
    if-nez p2, :cond_1

    .line 1003
    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 1005
    :cond_1
    if-eqz p3, :cond_2

    .line 1006
    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 1009
    :cond_2
    return-object v0

    .line 982
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-lt v1, v2, :cond_4

    .line 983
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Realm must be less then 255 bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 985
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-array v0, v1, [B

    .line 986
    const/16 v1, 0x15

    aput-byte v8, v0, v1

    .line 987
    const/16 v1, 0x16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 988
    const/16 v1, 0x17

    aput-byte v6, v0, v1

    .line 989
    const-string v1, "ISO8859_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static computeMd5Hash([B)[B
    .locals 3
    .param p0, "in"    # [B

    .prologue
    .line 932
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 933
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 934
    .end local v1    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static convertToByteArray(J)[B
    .locals 6
    .param p0, "l"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 794
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 796
    .local v0, "b":[B
    const/4 v1, 0x0

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 797
    const/4 v1, 0x1

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 798
    const/4 v1, 0x2

    const/16 v2, 0x8

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 799
    const/4 v1, 0x3

    and-long v2, v4, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 801
    return-object v0
.end method

.method public static convertToLong([B)J
    .locals 10
    .param p0, "b"    # [B

    .prologue
    .line 771
    const-wide/16 v4, 0x0

    .line 772
    .local v4, "result":J
    const-wide/16 v6, 0x0

    .line 773
    .local v6, "value":J
    const-wide/16 v2, 0x0

    .line 775
    .local v2, "power":J
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 776
    aget-byte v1, p0, v0

    int-to-long v6, v1

    .line 777
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    .line 778
    const-wide/16 v8, 0x100

    add-long/2addr v6, v8

    .line 781
    :cond_0
    long-to-int v1, v2

    shl-long v8, v6, v1

    or-long/2addr v4, v8

    .line 782
    const-wide/16 v8, 0x8

    add-long/2addr v2, v8

    .line 775
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 785
    :cond_1
    return-wide v4
.end method

.method public static convertToUnicode([BZ)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B
    .param p1, "includesNull"    # Z

    .prologue
    .line 890
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 891
    :cond_0
    const/4 v5, 0x0

    .line 921
    :goto_0
    return-object v5

    .line 893
    :cond_1
    array-length v0, p0

    .line 894
    .local v0, "arrayLength":I
    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_2

    .line 895
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Byte array not of a valid form"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 897
    :cond_2
    shr-int/lit8 v0, v0, 0x1

    .line 898
    if-eqz p1, :cond_3

    .line 899
    add-int/lit8 v0, v0, -0x1

    .line 902
    :cond_3
    new-array v1, v0, [C

    .line 903
    .local v1, "c":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_7

    .line 904
    mul-int/lit8 v5, v2, 0x2

    aget-byte v4, p0, v5

    .line 905
    .local v4, "upper":I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v3, p0, v5

    .line 906
    .local v3, "lower":I
    if-gez v4, :cond_4

    .line 907
    add-int/lit16 v4, v4, 0x100

    .line 909
    :cond_4
    if-gez v3, :cond_5

    .line 910
    add-int/lit16 v3, v3, 0x100

    .line 914
    :cond_5
    if-nez v4, :cond_6

    if-nez v3, :cond_6

    .line 915
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 918
    :cond_6
    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v5, v3

    int-to-char v5, v5

    aput-char v5, v1, v2

    .line 903
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 921
    .end local v3    # "lower":I
    .end local v4    # "upper":I
    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertToUnicodeByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 811
    if-nez p0, :cond_0

    .line 812
    const/4 v2, 0x0

    .line 826
    :goto_0
    return-object v2

    .line 815
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 816
    .local v0, "c":[C
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 817
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 818
    mul-int/lit8 v3, v1, 0x2

    aget-char v4, v0, v1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 819
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v0, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 823
    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aput-byte v5, v2, v3

    .line 824
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v2, v3

    goto :goto_0
.end method

.method public static createHeader(Ljavax/obex/HeaderSet;Z)[B
    .locals 22
    .param p0, "head"    # Ljavax/obex/HeaderSet;
    .param p1, "nullOut"    # Z

    .prologue
    .line 343
    const/4 v9, 0x0

    .line 344
    .local v9, "intHeader":Ljava/lang/Long;
    const/4 v14, 0x0

    .line 345
    .local v14, "stringHeader":Ljava/lang/String;
    const/4 v5, 0x0

    .line 346
    .local v5, "dateHeader":Ljava/util/Calendar;
    const/4 v4, 0x0

    .line 347
    .local v4, "byteHeader":Ljava/lang/Byte;
    const/4 v2, 0x0

    .line 348
    .local v2, "buffer":Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .line 349
    .local v16, "value":[B
    const/4 v13, 0x0

    .line 350
    .local v13, "result":[B
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 352
    .local v11, "lengthArray":[B
    const/4 v7, 0x0

    .line 353
    .local v7, "headImpl":Ljavax/obex/HeaderSet;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 354
    .local v12, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v7, p0

    .line 361
    :try_start_0
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_0

    .line 363
    const/16 v17, -0x35

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 364
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 368
    :cond_0
    const/16 v17, 0xc0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    .line 369
    if-eqz v9, :cond_1

    .line 370
    const/16 v17, -0x40

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 371
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    .line 372
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 373
    if-eqz p1, :cond_1

    .line 374
    const/16 v17, 0xc0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 379
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 380
    if-eqz v14, :cond_5

    .line 381
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 382
    invoke-static {v14}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 383
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 384
    .local v10, "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 385
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 386
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 387
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 388
    if-eqz p1, :cond_2

    .line 389
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 399
    .end local v10    # "length":I
    :cond_2
    :goto_0
    const/16 v17, 0x42

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 400
    if-eqz v14, :cond_3

    .line 401
    const/16 v17, 0x42

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :try_start_1
    const-string v17, "ISO8859_1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 408
    :try_start_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x4

    .line 409
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 410
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 411
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 412
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 413
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 414
    if-eqz p1, :cond_3

    .line 415
    const/16 v17, 0x42

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 420
    .end local v10    # "length":I
    :cond_3
    const/16 v17, 0xc3

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    .line 421
    if-eqz v9, :cond_4

    .line 422
    const/16 v17, -0x3d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 423
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    .line 424
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 425
    if-eqz p1, :cond_4

    .line 426
    const/16 v17, 0xc3

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 431
    :cond_4
    const/16 v17, 0x44

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/Calendar;

    move-object v5, v0

    .line 432
    if-eqz v5, :cond_e

    .line 438
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/16 v17, 0x1

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 440
    .local v15, "temp":I
    move v8, v15

    .local v8, "i":I
    :goto_1
    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    .line 441
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 440
    mul-int/lit8 v8, v8, 0xa

    goto :goto_1

    .line 391
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v8    # "i":I
    .end local v15    # "temp":I
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    :cond_5
    :try_start_4
    invoke-virtual {v7}, Ljavax/obex/HeaderSet;->getEmptyNameHeader()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 392
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 393
    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-byte v18, v11, v17

    .line 394
    const/16 v17, 0x1

    const/16 v18, 0x3

    aput-byte v18, v11, v17

    .line 395
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 675
    :catch_0
    move-exception v17

    .line 677
    :goto_2
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 679
    :try_start_5
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 684
    :goto_3
    return-object v13

    .line 404
    :catch_1
    move-exception v6

    .line 405
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 677
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v17

    :goto_4
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 679
    :try_start_7
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 681
    :goto_5
    throw v17

    .line 443
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v8    # "i":I
    .restart local v15    # "temp":I
    :cond_6
    :try_start_8
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 444
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 445
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_7

    .line 446
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    :cond_7
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 449
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 450
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_8

    .line 451
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    :cond_8
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 454
    const-string v17, "T"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 456
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    .line 457
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    :cond_9
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 460
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 461
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_a

    .line 462
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    :cond_a
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 465
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 466
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_b

    .line 467
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :cond_b
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 471
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTC"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 472
    const-string v17, "Z"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 476
    :cond_c
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ISO8859_1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v16

    .line 481
    :try_start_a
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 482
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 483
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 484
    const/16 v17, 0x44

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 485
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 486
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 487
    if-eqz p1, :cond_d

    .line 488
    const/16 v17, 0x44

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_d
    move-object v2, v3

    .line 493
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v8    # "i":I
    .end local v10    # "length":I
    .end local v15    # "temp":I
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    :cond_e
    const/16 v17, 0xc4

    :try_start_b
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/Calendar;

    move-object v5, v0

    .line 494
    if-eqz v5, :cond_f

    .line 495
    const/16 v17, 0xc4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 504
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    .line 505
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 506
    if-eqz p1, :cond_f

    .line 507
    const/16 v17, 0xc4

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 512
    :cond_f
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 513
    if-eqz v14, :cond_10

    .line 514
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 515
    invoke-static {v14}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 516
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 517
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 518
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 519
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 520
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 521
    if-eqz p1, :cond_10

    .line 522
    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 527
    .end local v10    # "length":I
    :cond_10
    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 528
    if-eqz v16, :cond_11

    .line 529
    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 530
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 531
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 532
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 533
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 534
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 535
    if-eqz p1, :cond_11

    .line 536
    const/16 v17, 0x46

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 541
    .end local v10    # "length":I
    :cond_11
    const/16 v17, 0x47

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 542
    if-eqz v16, :cond_12

    .line 543
    const/16 v17, 0x47

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 544
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 545
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 546
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 547
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 548
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 549
    if-eqz p1, :cond_12

    .line 550
    const/16 v17, 0x47

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 555
    .end local v10    # "length":I
    :cond_12
    const/16 v17, 0x4a

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 556
    if-eqz v16, :cond_13

    .line 557
    const/16 v17, 0x4a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 558
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 559
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 560
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 561
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 562
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 563
    if-eqz p1, :cond_13

    .line 564
    const/16 v17, 0x4a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 569
    .end local v10    # "length":I
    :cond_13
    const/16 v17, 0x4c

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 570
    if-eqz v16, :cond_14

    .line 571
    const/16 v17, 0x4c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 572
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 573
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 574
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 575
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 576
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 577
    if-eqz p1, :cond_14

    .line 578
    const/16 v17, 0x4c

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 583
    .end local v10    # "length":I
    :cond_14
    const/16 v17, 0x4f

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 584
    if-eqz v16, :cond_15

    .line 585
    const/16 v17, 0x4f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 586
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 587
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 588
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 589
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 590
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 591
    if-eqz p1, :cond_15

    .line 592
    const/16 v17, 0x4f

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 597
    .end local v10    # "length":I
    :cond_15
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v8, v0, :cond_1a

    .line 600
    add-int/lit8 v17, v8, 0x30

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 601
    if-eqz v14, :cond_16

    .line 602
    int-to-byte v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 603
    invoke-static {v14}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 604
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 605
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 606
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 607
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 608
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 609
    if-eqz p1, :cond_16

    .line 610
    add-int/lit8 v17, v8, 0x30

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 615
    .end local v10    # "length":I
    :cond_16
    add-int/lit8 v17, v8, 0x70

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 616
    if-eqz v16, :cond_17

    .line 617
    int-to-byte v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x70

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 618
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 619
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 620
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 621
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 622
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 623
    if-eqz p1, :cond_17

    .line 624
    add-int/lit8 v17, v8, 0x70

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 629
    .end local v10    # "length":I
    :cond_17
    add-int/lit16 v0, v8, 0xb0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Byte;

    move-object v4, v0

    .line 630
    if-eqz v4, :cond_18

    .line 631
    int-to-byte v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xb0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 632
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 633
    if-eqz p1, :cond_18

    .line 634
    add-int/lit16 v0, v8, 0xb0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 639
    :cond_18
    add-int/lit16 v0, v8, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    .line 640
    if-eqz v9, :cond_19

    .line 641
    int-to-byte v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 643
    if-eqz p1, :cond_19

    .line 644
    add-int/lit16 v0, v8, 0xf0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 597
    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 477
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v15    # "temp":I
    :catch_2
    move-exception v6

    .line 478
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :try_start_c
    throw v6
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 675
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "i":I
    .end local v15    # "temp":I
    :catch_3
    move-exception v17

    move-object v2, v3

    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_2

    .line 650
    .restart local v8    # "i":I
    :cond_1a
    :try_start_d
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 651
    const/16 v17, 0x4d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 652
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 653
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 654
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 655
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 656
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 657
    if-eqz p1, :cond_1b

    .line 658
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 663
    .end local v10    # "length":I
    :cond_1b
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 664
    const/16 v17, 0x4e

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 665
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 666
    .restart local v10    # "length":I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 667
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 668
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 669
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 670
    if-eqz p1, :cond_1c

    .line 671
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 677
    .end local v10    # "length":I
    :cond_1c
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 679
    :try_start_e
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_3

    .line 680
    :catch_4
    move-exception v17

    goto/16 :goto_3

    .end local v8    # "i":I
    :catch_5
    move-exception v17

    goto/16 :goto_3

    :catch_6
    move-exception v18

    goto/16 :goto_5

    .line 677
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v17

    move-object v2, v3

    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_4
.end method

.method public static findHeaderEnd([BII)I
    .locals 6
    .param p0, "headerArray"    # [B
    .param p1, "start"    # I
    .param p2, "maxSize"    # I

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "fullLength":I
    const/4 v3, -0x1

    .line 702
    .local v3, "lastLength":I
    move v2, p1

    .line 703
    .local v2, "index":I
    const/4 v4, 0x0

    .line 705
    .local v4, "length":I
    :goto_0
    if-ge v0, p2, :cond_3

    array-length v5, p0

    if-ge v2, v5, :cond_3

    .line 706
    aget-byte v5, p0, v2

    if-gez v5, :cond_0

    aget-byte v5, p0, v2

    add-int/lit16 v1, v5, 0x100

    .line 707
    .local v1, "headerID":I
    :goto_1
    move v3, v0

    .line 709
    and-int/lit16 v5, v1, 0xc0

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 715
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 716
    aget-byte v5, p0, v2

    if-gez v5, :cond_1

    aget-byte v5, p0, v2

    add-int/lit16 v4, v5, 0x100

    .line 718
    :goto_2
    shl-int/lit8 v4, v4, 0x8

    .line 719
    add-int/lit8 v2, v2, 0x1

    .line 720
    aget-byte v5, p0, v2

    if-gez v5, :cond_2

    aget-byte v5, p0, v2

    add-int/lit16 v5, v5, 0x100

    :goto_3
    add-int/2addr v4, v5

    .line 722
    add-int/lit8 v4, v4, -0x3

    .line 723
    add-int/lit8 v2, v2, 0x1

    .line 724
    add-int/2addr v2, v4

    .line 725
    add-int/lit8 v5, v4, 0x3

    add-int/2addr v0, v5

    .line 726
    goto :goto_0

    .line 706
    .end local v1    # "headerID":I
    :cond_0
    aget-byte v1, p0, v2

    goto :goto_1

    .line 716
    .restart local v1    # "headerID":I
    :cond_1
    aget-byte v4, p0, v2

    goto :goto_2

    .line 720
    :cond_2
    aget-byte v5, p0, v2

    goto :goto_3

    .line 730
    :sswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 731
    add-int/lit8 v2, v2, 0x1

    .line 732
    add-int/lit8 v0, v0, 0x2

    .line 733
    goto :goto_0

    .line 737
    :sswitch_2
    add-int/lit8 v2, v2, 0x5

    .line 738
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 748
    .end local v1    # "headerID":I
    :cond_3
    if-nez v3, :cond_5

    .line 755
    if-ge v0, p2, :cond_4

    .line 756
    array-length v5, p0

    .line 761
    :goto_4
    return v5

    .line 758
    :cond_4
    const/4 v5, -0x1

    goto :goto_4

    .line 761
    :cond_5
    add-int v5, v3, p1

    goto :goto_4

    .line 709
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch
.end method

.method public static findTag(B[B)I
    .locals 4
    .param p0, "tag"    # B
    .param p1, "value"    # [B

    .prologue
    const/4 v2, -0x1

    .line 860
    const/4 v1, 0x0

    .line 862
    .local v1, "length":I
    if-nez p1, :cond_1

    move v0, v2

    .line 877
    :cond_0
    :goto_0
    return v0

    .line 866
    :cond_1
    const/4 v0, 0x0

    .line 868
    .local v0, "index":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-byte v3, p1, v0

    if-eq v3, p0, :cond_2

    .line 869
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 870
    add-int/lit8 v3, v1, 0x2

    add-int/2addr v0, v3

    goto :goto_1

    .line 873
    :cond_2
    array-length v3, p1

    if-lt v0, v3, :cond_0

    move v0, v2

    .line 874
    goto :goto_0
.end method

.method public static getTagValue(B[B)[B
    .locals 4
    .param p0, "tag"    # B
    .param p1, "triplet"    # [B

    .prologue
    .line 838
    invoke-static {p0, p1}, Ljavax/obex/ObexHelper;->findTag(B[B)I

    move-result v0

    .line 839
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 840
    const/4 v2, 0x0

    .line 850
    :goto_0
    return-object v2

    .line 843
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 844
    aget-byte v3, p1, v0

    and-int/lit16 v1, v3, 0xff

    .line 846
    .local v1, "length":I
    new-array v2, v1, [B

    .line 847
    .local v2, "result":[B
    add-int/lit8 v0, v0, 0x1

    .line 848
    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B
    .locals 18
    .param p0, "header"    # Ljavax/obex/HeaderSet;
    .param p1, "headerArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v7, 0x0

    .line 168
    .local v7, "index":I
    const/4 v8, 0x0

    .line 170
    .local v8, "length":I
    const/4 v11, 0x0

    .line 171
    .local v11, "value":[B
    const/4 v2, 0x0

    .line 172
    .local v2, "body":[B
    move-object/from16 v6, p0

    .line 174
    .local v6, "headerImpl":Ljavax/obex/HeaderSet;
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v7, v12, :cond_7

    .line 175
    aget-byte v12, p1, v7

    and-int/lit16 v5, v12, 0xff

    .line 176
    .local v5, "headerID":I
    and-int/lit16 v12, v5, 0xc0

    sparse-switch v12, :sswitch_data_0

    goto :goto_0

    .line 189
    :sswitch_0
    const/4 v10, 0x1

    .line 190
    .local v10, "trimTail":Z
    add-int/lit8 v7, v7, 0x1

    .line 191
    aget-byte v12, p1, v7

    and-int/lit16 v8, v12, 0xff

    .line 192
    shl-int/lit8 v8, v8, 0x8

    .line 193
    add-int/lit8 v7, v7, 0x1

    .line 194
    aget-byte v12, p1, v7

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v8, v12

    .line 195
    add-int/lit8 v8, v8, -0x3

    .line 196
    add-int/lit8 v7, v7, 0x1

    .line 197
    new-array v11, v8, [B

    .line 198
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v7, v11, v12, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 199
    if-eqz v8, :cond_0

    if-lez v8, :cond_1

    add-int/lit8 v12, v8, -0x1

    aget-byte v12, v11, v12

    if-eqz v12, :cond_1

    .line 200
    :cond_0
    const/4 v10, 0x0

    .line 202
    :cond_1
    packed-switch v5, :pswitch_data_0

    .line 265
    :pswitch_0
    and-int/lit16 v12, v5, 0xc0

    if-nez v12, :cond_4

    .line 266
    const/4 v12, 0x1

    invoke-static {v11, v12}, Ljavax/obex/ObexHelper;->convertToUnicode([BZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v5, v12}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    :goto_1
    add-int/2addr v7, v8

    .line 274
    goto :goto_0

    .line 206
    :pswitch_1
    if-nez v10, :cond_2

    .line 207
    :try_start_1
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    array-length v14, v11

    const-string v15, "ISO8859_1"

    invoke-direct {v12, v11, v13, v14, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v6, v5, v12}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 213
    :catch_0
    move-exception v4

    .line 214
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 324
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "headerID":I
    .end local v10    # "trimTail":Z
    :catch_1
    move-exception v4

    .line 325
    .local v4, "e":Ljava/io/IOException;
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Header was not formatted properly"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 210
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "headerID":I
    .restart local v10    # "trimTail":Z
    :cond_2
    :try_start_3
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    array-length v14, v11

    add-int/lit8 v14, v14, -0x1

    const-string v15, "ISO8859_1"

    invoke-direct {v12, v11, v13, v14, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v6, v5, v12}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 219
    :pswitch_2
    :try_start_4
    new-array v12, v8, [B

    iput-object v12, v6, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 220
    iget-object v12, v6, Ljavax/obex/HeaderSet;->mAuthChall:[B

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v7, v12, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1

    .line 225
    :pswitch_3
    new-array v12, v8, [B

    iput-object v12, v6, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 226
    iget-object v12, v6, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v7, v12, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1

    .line 233
    :pswitch_4
    add-int/lit8 v12, v8, 0x1

    new-array v2, v12, [B

    .line 234
    const/4 v12, 0x0

    int-to-byte v13, v5

    aput-byte v13, v2, v12

    .line 235
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v7, v2, v12, v8}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 240
    :pswitch_5
    :try_start_5
    new-instance v3, Ljava/lang/String;

    const-string v12, "ISO8859_1"

    invoke-direct {v3, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 241
    .local v3, "dateString":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 242
    .local v9, "temp":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x10

    if-ne v12, v13, :cond_3

    const/16 v12, 0xf

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5a

    if-ne v12, v13, :cond_3

    .line 244
    const-string v12, "UTC"

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 246
    :cond_3
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x6

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 250
    const/4 v12, 0x5

    const/4 v13, 0x6

    const/16 v14, 0x8

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/16 v12, 0xb

    const/16 v13, 0x9

    const/16 v14, 0xb

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0xd

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v12, 0xd

    const/16 v13, 0xd

    const/16 v14, 0xf

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 258
    const/16 v12, 0x44

    invoke-virtual {v6, v12, v9}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 259
    .end local v3    # "dateString":Ljava/lang/String;
    .end local v9    # "temp":Ljava/util/Calendar;
    :catch_2
    move-exception v4

    .line 260
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    throw v4

    .line 269
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    invoke-virtual {v6, v5, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 281
    .end local v10    # "trimTail":Z
    :sswitch_1
    add-int/lit8 v7, v7, 0x1

    .line 283
    :try_start_7
    aget-byte v12, p1, v7

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v6, v5, v12}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 287
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 288
    goto/16 :goto_0

    .line 296
    :sswitch_2
    add-int/lit8 v7, v7, 0x1

    .line 297
    const/4 v12, 0x4

    :try_start_8
    new-array v11, v12, [B

    .line 298
    const/4 v12, 0x0

    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v7, v11, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 300
    const/16 v12, 0xc4

    if-eq v5, v12, :cond_6

    .line 303
    const/16 v12, 0xcb

    if-ne v5, v12, :cond_5

    .line 304
    const/4 v12, 0x4

    :try_start_9
    new-array v12, v12, [B

    iput-object v12, v6, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 305
    const/4 v12, 0x0

    iget-object v13, v6, Ljavax/obex/HeaderSet;->mConnectionID:[B

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 319
    :goto_3
    add-int/lit8 v7, v7, 0x4

    goto/16 :goto_0

    .line 307
    :cond_5
    invoke-static {v11}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v5, v12}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 315
    :catch_3
    move-exception v4

    .line 317
    .local v4, "e":Ljava/lang/Exception;
    :try_start_a
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Header was not formatted properly"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 311
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 312
    .restart local v9    # "temp":Ljava/util/Calendar;
    new-instance v12, Ljava/util/Date;

    invoke-static {v11}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 313
    const/16 v12, 0xc4

    invoke-virtual {v6, v12, v9}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    .line 328
    .end local v5    # "headerID":I
    .end local v9    # "temp":Ljava/util/Calendar;
    :cond_7
    return-object v2

    .line 284
    .restart local v5    # "headerID":I
    :catch_4
    move-exception v12

    goto :goto_2

    .line 176
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch

    .line 202
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
