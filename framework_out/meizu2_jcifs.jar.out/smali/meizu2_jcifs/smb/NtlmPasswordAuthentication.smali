.class public final Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
.super Ljava/lang/Object;
.source "NtlmPasswordAuthentication.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final ANONYMOUS:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

.field static final BLANK:Ljava/lang/String; = ""

.field static final DEFAULT:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

.field static DEFAULT_DOMAIN:Ljava/lang/String;

.field static DEFAULT_PASSWORD:Ljava/lang/String;

.field static DEFAULT_USERNAME:Ljava/lang/String;

.field static final GUEST:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

.field private static final LM_COMPATIBILITY:I

.field static final NULL:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

.field private static final RANDOM:Ljava/util/Random;

.field private static final S8:[B

.field private static log:Lmeizu2_jcifs/util/LogStream;


# instance fields
.field ansiHash:[B

.field challenge:[B

.field clientChallenge:[B

.field domain:Ljava/lang/String;

.field hashesExternal:Z

.field password:Ljava/lang/String;

.field unicodeHash:[B

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    const-string v0, "meizu2_jcifs.smb.lmCompatibility"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lmeizu2_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    .line 49
    invoke-static {}, Lmeizu2_jcifs/util/LogStream;->getInstance()Lmeizu2_jcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->S8:[B

    .line 77
    new-instance v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    .line 270
    new-instance v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->NULL:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    .line 272
    new-instance v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    const-string v1, "?"

    const-string v2, "GUEST"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->GUEST:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    .line 274
    new-instance v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    return-void

    .line 52
    nop

    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "userInfo"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-boolean v5, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 283
    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 284
    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 293
    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 295
    if-eqz p1, :cond_3

    .line 297
    :try_start_0
    invoke-static {p1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->unescape(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 303
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 304
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 305
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 306
    .local v0, "c":C
    const/16 v4, 0x3b

    if-ne v0, v4, :cond_1

    .line 307
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 308
    add-int/lit8 v3, v2, 0x1

    .line 304
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    :cond_1
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_0

    .line 310
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 314
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 317
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "u":I
    :cond_3
    invoke-static {}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    .line 319
    iget-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    if-nez v4, :cond_4

    sget-object v4, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 320
    :cond_4
    iget-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    if-nez v4, :cond_5

    sget-object v4, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 321
    :cond_5
    iget-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    if-nez v4, :cond_6

    sget-object v4, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 322
    :cond_6
    return-void

    .line 298
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-boolean v2, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 283
    iput-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 284
    iput-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 347
    if-eqz p2, :cond_0

    .line 348
    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 349
    .local v0, "ci":I
    if-lez v0, :cond_4

    .line 350
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 361
    .end local v0    # "ci":I
    :cond_0
    :goto_0
    iput-object p1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 362
    iput-object p2, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 363
    iput-object p3, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 365
    invoke-static {}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    .line 367
    if-nez p1, :cond_1

    sget-object v1, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 368
    :cond_1
    if-nez p2, :cond_2

    sget-object v1, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 369
    :cond_2
    if-nez p3, :cond_3

    sget-object v1, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 370
    :cond_3
    return-void

    .line 353
    .restart local v0    # "ci":I
    :cond_4
    const/16 v1, 0x5c

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 354
    if-lez v0, :cond_0

    .line 355
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 356
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "bUnuse"    # Z

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 283
    iput-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 284
    iput-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 325
    iput-object p1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 326
    iput-object p2, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 327
    iput-object p3, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 329
    invoke-static {}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    .line 331
    if-nez p1, :cond_0

    sget-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 332
    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 333
    :cond_1
    if-nez p3, :cond_2

    sget-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 335
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "challenge"    # [B
    .param p4, "ansiHash"    # [B
    .param p5, "unicodeHash"    # [B

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 283
    iput-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 284
    iput-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 378
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "External credentials cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    iput-object p1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 383
    iput-object p2, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 384
    iput-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 385
    iput-object p3, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 386
    iput-object p4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    .line 387
    iput-object p5, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 389
    return-void
.end method

.method private static E([B[B[B)V
    .locals 8
    .param p0, "key"    # [B
    .param p1, "data"    # [B
    .param p2, "e"    # [B

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 61
    new-array v3, v6, [B

    .line 62
    .local v3, "key7":[B
    new-array v1, v7, [B

    .line 64
    .local v1, "e8":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    div-int/lit8 v4, v4, 0x7

    if-ge v2, v4, :cond_0

    .line 65
    mul-int/lit8 v4, v2, 0x7

    invoke-static {p0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    new-instance v0, Lmeizu2_jcifs/util/DES;

    invoke-direct {v0, v3}, Lmeizu2_jcifs/util/DES;-><init>([B)V

    .line 67
    .local v0, "des":Lmeizu2_jcifs/util/DES;
    invoke-virtual {v0, p1, v1}, Lmeizu2_jcifs/util/DES;->encrypt([B[B)V

    .line 68
    mul-int/lit8 v4, v2, 0x8

    invoke-static {v1, v5, p2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "des":Lmeizu2_jcifs/util/DES;
    :cond_0
    return-void
.end method

.method static computeResponse([B[B[BII)[B
    .locals 6
    .param p0, "responseKey"    # [B
    .param p1, "serverChallenge"    # [B
    .param p2, "clientData"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v5, 0x0

    .line 224
    new-instance v0, Lmeizu2_jcifs/util/HMACT64;

    invoke-direct {v0, p0}, Lmeizu2_jcifs/util/HMACT64;-><init>([B)V

    .line 225
    .local v0, "hmac":Lmeizu2_jcifs/util/HMACT64;
    invoke-virtual {v0, p1}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 226
    invoke-virtual {v0, p2, p3, p4}, Lmeizu2_jcifs/util/HMACT64;->update([BII)V

    .line 227
    invoke-virtual {v0}, Lmeizu2_jcifs/util/HMACT64;->digest()[B

    move-result-object v1

    .line 228
    .local v1, "mac":[B
    array-length v3, v1

    array-length v4, p2

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 229
    .local v2, "ret":[B
    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    array-length v3, v1

    array-length v4, p2

    invoke-static {p2, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    return-object v2
.end method

.method public static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 9
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "challenge"    # [B
    .param p4, "clientChallenge"    # [B

    .prologue
    .line 148
    const/16 v6, 0x10

    :try_start_0
    new-array v1, v6, [B

    .line 149
    .local v1, "hash":[B
    const/16 v6, 0x18

    new-array v5, v6, [B

    .line 151
    .local v5, "response":[B
    new-instance v4, Lmeizu2_jcifs/util/MD4;

    invoke-direct {v4}, Lmeizu2_jcifs/util/MD4;-><init>()V

    .line 152
    .local v4, "md4":Lmeizu2_jcifs/util/MD4;
    const-string v6, "UTF-16LE"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lmeizu2_jcifs/util/MD4;->update([B)V

    .line 153
    new-instance v2, Lmeizu2_jcifs/util/HMACT64;

    invoke-virtual {v4}, Lmeizu2_jcifs/util/MD4;->digest()[B

    move-result-object v6

    invoke-direct {v2, v6}, Lmeizu2_jcifs/util/HMACT64;-><init>([B)V

    .line 154
    .local v2, "hmac":Lmeizu2_jcifs/util/HMACT64;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-16LE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-16LE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 156
    new-instance v3, Lmeizu2_jcifs/util/HMACT64;

    invoke-virtual {v2}, Lmeizu2_jcifs/util/HMACT64;->digest()[B

    move-result-object v6

    invoke-direct {v3, v6}, Lmeizu2_jcifs/util/HMACT64;-><init>([B)V

    .line 157
    .end local v2    # "hmac":Lmeizu2_jcifs/util/HMACT64;
    .local v3, "hmac":Lmeizu2_jcifs/util/HMACT64;
    invoke-virtual {v3, p3}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 158
    invoke-virtual {v3, p4}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 159
    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual {v3, v5, v6, v7}, Lmeizu2_jcifs/util/HMACT64;->digest([BII)I

    .line 160
    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x8

    invoke-static {p4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "hash":[B
    .end local v3    # "hmac":Lmeizu2_jcifs/util/HMACT64;
    .end local v4    # "md4":Lmeizu2_jcifs/util/MD4;
    .end local v5    # "response":[B
    :goto_0
    return-object v5

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v6, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    sget v6, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lez v6, :cond_0

    .line 164
    sget-object v6, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 165
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getLMv2Response([B[B[B)[B
    .locals 2
    .param p0, "responseKeyLM"    # [B
    .param p1, "serverChallenge"    # [B
    .param p2, "clientChallenge"    # [B

    .prologue
    .line 238
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p0, p1, p2, v0, v1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getNTLM2Response([B[B[B)[B
    .locals 10
    .param p0, "nTOWFv1"    # [B
    .param p1, "serverChallenge"    # [B
    .param p2, "clientChallenge"    # [B

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x0

    .line 172
    new-array v4, v5, [B

    .line 176
    .local v4, "sessionHash":[B
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 177
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 178
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v2, p2, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 179
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    const/16 v5, 0x15

    new-array v1, v5, [B

    .line 187
    .local v1, "key":[B
    const/16 v5, 0x10

    invoke-static {p0, v9, v1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    const/16 v5, 0x18

    new-array v3, v5, [B

    .line 189
    .local v3, "ntResponse":[B
    invoke-static {v1, v4, v3}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 191
    return-object v3

    .line 180
    .end local v1    # "key":[B
    .end local v2    # "md5":Ljava/security/MessageDigest;
    .end local v3    # "ntResponse":[B
    :catch_0
    move-exception v0

    .line 181
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    sget-object v5, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    sget v5, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lez v5, :cond_0

    .line 182
    sget-object v5, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v0, v5}, Ljava/security/GeneralSecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 183
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "MD5"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getNTLMResponse(Ljava/lang/String;[B)[B
    .locals 8
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B

    .prologue
    .line 114
    const/4 v5, 0x0

    .line 115
    .local v5, "uni":[B
    const/16 v6, 0x15

    new-array v2, v6, [B

    .line 116
    .local v2, "p21":[B
    const/16 v6, 0x18

    new-array v3, v6, [B

    .line 119
    .local v3, "p24":[B
    :try_start_0
    const-string v6, "UTF-16LE"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 124
    :cond_0
    :goto_0
    new-instance v1, Lmeizu2_jcifs/util/MD4;

    invoke-direct {v1}, Lmeizu2_jcifs/util/MD4;-><init>()V

    .line 125
    .local v1, "md4":Lmeizu2_jcifs/util/MD4;
    invoke-virtual {v1, v5}, Lmeizu2_jcifs/util/MD4;->update([B)V

    .line 127
    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_1
    invoke-virtual {v1, v2, v6, v7}, Lmeizu2_jcifs/util/MD4;->digest([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :cond_1
    :goto_1
    invoke-static {v2, p1, v3}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 133
    return-object v3

    .line 120
    .end local v1    # "md4":Lmeizu2_jcifs/util/MD4;
    :catch_0
    move-exception v4

    .line 121
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    sget v6, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lez v6, :cond_0

    .line 122
    sget-object v6, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v4, v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 128
    .end local v4    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "md4":Lmeizu2_jcifs/util/MD4;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v6, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    sget v6, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lez v6, :cond_1

    .line 130
    sget-object v6, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1
.end method

.method public static getNTLMv2Response([B[B[BJ[B)[B
    .locals 5
    .param p0, "responseKeyNT"    # [B
    .param p1, "serverChallenge"    # [B
    .param p2, "clientChallenge"    # [B
    .param p3, "nanos1601"    # J
    .param p5, "targetInfo"    # [B

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 251
    if-eqz p5, :cond_1

    array-length v0, p5

    .line 252
    .local v0, "targetInfoLength":I
    :goto_0
    add-int/lit8 v3, v0, 0x1c

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [B

    .line 254
    .local v1, "temp":[B
    const/16 v3, 0x101

    invoke-static {v3, v1, v2}, Lmeizu2_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 255
    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lmeizu2_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 256
    invoke-static {p3, p4, v1, v4}, Lmeizu2_jcifs/util/Encdec;->enc_uint64le(J[BI)I

    .line 257
    const/16 v3, 0x10

    invoke-static {p2, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    const/16 v3, 0x18

    invoke-static {v2, v1, v3}, Lmeizu2_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 259
    if-eqz p5, :cond_0

    .line 260
    const/16 v3, 0x1c

    invoke-static {p5, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    :cond_0
    add-int/lit8 v3, v0, 0x1c

    invoke-static {v2, v1, v3}, Lmeizu2_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 263
    array-length v3, v1

    invoke-static {p0, p1, v1, v2, v3}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object v2

    return-object v2

    .end local v0    # "targetInfoLength":I
    .end local v1    # "temp":[B
    :cond_1
    move v0, v2

    .line 251
    goto :goto_0
.end method

.method public static getPreNTLMResponse(Ljava/lang/String;[B)[B
    .locals 10
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "challenge"    # [B

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x0

    .line 90
    new-array v0, v9, [B

    .line 91
    .local v0, "p14":[B
    const/16 v6, 0x15

    new-array v1, v6, [B

    .line 92
    .local v1, "p21":[B
    const/16 v6, 0x18

    new-array v2, v6, [B

    .line 95
    .local v2, "p24":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lmeizu2_jcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 99
    .local v3, "passwordBytes":[B
    array-length v4, v3

    .line 102
    .local v4, "passwordLength":I
    if-le v4, v9, :cond_0

    .line 103
    const/16 v4, 0xe

    .line 105
    :cond_0
    invoke-static {v3, v8, v0, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    sget-object v6, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->S8:[B

    invoke-static {v0, v6, v1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 107
    invoke-static {v1, p1, v2}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 108
    return-object v2

    .line 96
    .end local v3    # "passwordBytes":[B
    .end local v4    # "passwordLength":I
    :catch_0
    move-exception v5

    .line 97
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Try setting meizu2_jcifs.encoding=US-ASCII"

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method static initDefaults()V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "meizu2_jcifs.smb.client.domain"

    const-string v1, "?"

    invoke-static {v0, v1}, Lmeizu2_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 82
    const-string v0, "meizu2_jcifs.smb.client.username"

    const-string v1, "GUEST"

    invoke-static {v0, v1}, Lmeizu2_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    .line 83
    const-string v0, "meizu2_jcifs.smb.client.password"

    const-string v1, ""

    invoke-static {v0, v1}, Lmeizu2_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    goto :goto_0
.end method

.method public static nTOWFv1(Ljava/lang/String;)[B
    .locals 4
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Password parameter is required"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_0
    :try_start_0
    new-instance v0, Lmeizu2_jcifs/util/MD4;

    invoke-direct {v0}, Lmeizu2_jcifs/util/MD4;-><init>()V

    .line 199
    .local v0, "md4":Lmeizu2_jcifs/util/MD4;
    const-string v2, "UTF-16LE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lmeizu2_jcifs/util/MD4;->update([B)V

    .line 200
    invoke-virtual {v0}, Lmeizu2_jcifs/util/MD4;->digest()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 201
    .end local v0    # "md4":Lmeizu2_jcifs/util/MD4;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 208
    :try_start_0
    new-instance v1, Lmeizu2_jcifs/util/MD4;

    invoke-direct {v1}, Lmeizu2_jcifs/util/MD4;-><init>()V

    .line 209
    .local v1, "md4":Lmeizu2_jcifs/util/MD4;
    const-string v3, "UTF-16LE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lmeizu2_jcifs/util/MD4;->update([B)V

    .line 210
    new-instance v0, Lmeizu2_jcifs/util/HMACT64;

    invoke-virtual {v1}, Lmeizu2_jcifs/util/MD4;->digest()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lmeizu2_jcifs/util/HMACT64;-><init>([B)V

    .line 211
    .local v0, "hmac":Lmeizu2_jcifs/util/HMACT64;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-16LE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 212
    const-string v3, "UTF-16LE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 213
    invoke-virtual {v0}, Lmeizu2_jcifs/util/HMACT64;->digest()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 214
    .end local v0    # "hmac":Lmeizu2_jcifs/util/HMACT64;
    .end local v1    # "md4":Lmeizu2_jcifs/util/MD4;
    :catch_0
    move-exception v2

    .line 215
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 614
    new-array v0, v11, [B

    .line 616
    .local v0, "b":[B
    if-nez p0, :cond_0

    .line 617
    const/4 v8, 0x0

    .line 644
    :goto_0
    return-object v8

    .line 620
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 621
    .local v5, "len":I
    new-array v6, v5, [C

    .line 622
    .local v6, "out":[C
    const/4 v7, 0x0

    .line 623
    .local v7, "state":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v2, v3

    .local v2, "i":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 624
    packed-switch v7, :pswitch_data_0

    move v3, v4

    .line 623
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_1

    .line 626
    :pswitch_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 627
    .local v1, "ch":C
    const/16 v8, 0x25

    if-ne v1, v8, :cond_1

    .line 628
    const/4 v7, 0x1

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 630
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aput-char v1, v6, v4

    goto :goto_2

    .line 637
    .end local v1    # "ch":C
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :pswitch_1
    add-int/lit8 v8, v2, 0x2

    invoke-virtual {p0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v10

    .line 638
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    new-instance v8, Ljava/lang/String;

    const-string v9, "ASCII"

    invoke-direct {v8, v0, v10, v11, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v6, v4

    .line 639
    add-int/lit8 v2, v2, 0x1

    .line 640
    const/4 v7, 0x0

    goto :goto_2

    .line 644
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6, v10, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    instance-of v3, p1, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 577
    check-cast v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    .line 578
    .local v0, "ntlm":Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    iget-object v3, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 580
    iget-boolean v3, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v3, :cond_2

    .line 581
    iget-object v3, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    iget-object v4, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    iget-object v4, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 592
    .end local v0    # "ntlm":Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "ntlm":Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    :cond_1
    move v1, v2

    .line 581
    goto :goto_0

    .line 587
    :cond_2
    iget-boolean v3, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v4, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "ntlm":Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    :cond_3
    move v1, v2

    .line 592
    goto :goto_0
.end method

.method public getAnsiHash([B)[B
    .locals 4
    .param p1, "challenge"    # [B

    .prologue
    .line 427
    iget-boolean v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    .line 446
    :goto_0
    return-object v0

    .line 430
    :cond_0
    sget v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_0

    .line 446
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    .line 433
    :pswitch_0
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    .line 439
    :pswitch_2
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v0, :cond_1

    .line 440
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 441
    sget-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    iget-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 443
    :cond_1
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    iget-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iget-object v2, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v3, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-static {v0, v1, v2, p1, v3}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 419
    iget-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 420
    .local v0, "d":Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 419
    .end local v0    # "d":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 420
    .restart local v0    # "d":Z
    :cond_1
    iget-object v1, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    goto :goto_1
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningKey([B)[B
    .locals 5
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 480
    sget v1, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v1, :pswitch_data_0

    .line 496
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 484
    :pswitch_0
    const/16 v1, 0x28

    new-array v0, v1, [B

    .line 485
    .local v0, "signingKey":[B
    invoke-virtual {p0, p1, v0, v4}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    .line 486
    invoke-virtual {p0, p1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x18

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 494
    .end local v0    # "signingKey":[B
    :pswitch_1
    new-instance v1, Lmeizu2_jcifs/smb/SmbException;

    const-string v2, "NTLMv2 requires extended security (meizu2_jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)"

    invoke-direct {v1, v2}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getUnicodeHash([B)[B
    .locals 1
    .param p1, "challenge"    # [B

    .prologue
    .line 453
    iget-boolean v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    .line 474
    :goto_0
    return-object v0

    .line 456
    :cond_0
    sget v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_0

    .line 474
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    .line 460
    :pswitch_0
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    .line 472
    :pswitch_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getUserSessionKey([B[BI)V
    .locals 7
    .param p1, "challenge"    # [B
    .param p2, "dest"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 528
    iget-boolean v5, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v5, :cond_0

    .line 568
    :goto_0
    return-void

    .line 530
    :cond_0
    :try_start_0
    new-instance v2, Lmeizu2_jcifs/util/MD4;

    invoke-direct {v2}, Lmeizu2_jcifs/util/MD4;-><init>()V

    .line 531
    .local v2, "md4":Lmeizu2_jcifs/util/MD4;
    iget-object v5, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    const-string v6, "UTF-16LE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lmeizu2_jcifs/util/MD4;->update([B)V

    .line 532
    sget v5, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v5, :pswitch_data_0

    .line 561
    invoke-virtual {v2}, Lmeizu2_jcifs/util/MD4;->digest()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lmeizu2_jcifs/util/MD4;->update([B)V

    .line 562
    const/16 v5, 0x10

    invoke-virtual {v2, p2, p3, v5}, Lmeizu2_jcifs/util/MD4;->digest([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    .end local v2    # "md4":Lmeizu2_jcifs/util/MD4;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lmeizu2_jcifs/smb/SmbException;

    const-string v6, ""

    invoke-direct {v5, v6, v0}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "md4":Lmeizu2_jcifs/util/MD4;
    :pswitch_0
    :try_start_1
    invoke-virtual {v2}, Lmeizu2_jcifs/util/MD4;->digest()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lmeizu2_jcifs/util/MD4;->update([B)V

    .line 537
    const/16 v5, 0x10

    invoke-virtual {v2, p2, p3, v5}, Lmeizu2_jcifs/util/MD4;->digest([BII)I

    goto :goto_0

    .line 542
    :pswitch_1
    iget-object v5, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v5, :cond_1

    .line 543
    const/16 v5, 0x8

    new-array v5, v5, [B

    iput-object v5, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 544
    sget-object v5, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    iget-object v6, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextBytes([B)V

    .line 547
    :cond_1
    new-instance v1, Lmeizu2_jcifs/util/HMACT64;

    invoke-virtual {v2}, Lmeizu2_jcifs/util/MD4;->digest()[B

    move-result-object v5

    invoke-direct {v1, v5}, Lmeizu2_jcifs/util/HMACT64;-><init>([B)V

    .line 548
    .local v1, "hmac":Lmeizu2_jcifs/util/HMACT64;
    iget-object v5, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-16LE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 550
    iget-object v5, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-16LE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 552
    invoke-virtual {v1}, Lmeizu2_jcifs/util/HMACT64;->digest()[B

    move-result-object v3

    .line 553
    .local v3, "ntlmv2Hash":[B
    new-instance v1, Lmeizu2_jcifs/util/HMACT64;

    .end local v1    # "hmac":Lmeizu2_jcifs/util/HMACT64;
    invoke-direct {v1, v3}, Lmeizu2_jcifs/util/HMACT64;-><init>([B)V

    .line 554
    .restart local v1    # "hmac":Lmeizu2_jcifs/util/HMACT64;
    invoke-virtual {v1, p1}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 555
    iget-object v5, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v1, v5}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 556
    new-instance v4, Lmeizu2_jcifs/util/HMACT64;

    invoke-direct {v4, v3}, Lmeizu2_jcifs/util/HMACT64;-><init>([B)V

    .line 557
    .local v4, "userKey":Lmeizu2_jcifs/util/HMACT64;
    invoke-virtual {v1}, Lmeizu2_jcifs/util/HMACT64;->digest()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lmeizu2_jcifs/util/HMACT64;->update([B)V

    .line 558
    const/16 v5, 0x10

    invoke-virtual {v4, p2, p3, v5}, Lmeizu2_jcifs/util/HMACT64;->digest([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getUserSessionKey([B)[B
    .locals 3
    .param p1, "challenge"    # [B

    .prologue
    .line 507
    iget-boolean v2, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 515
    :cond_0
    :goto_0
    return-object v1

    .line 508
    :cond_1
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 510
    .local v1, "key":[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    sget v2, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lez v2, :cond_0

    .line 513
    sget-object v2, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p0}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
