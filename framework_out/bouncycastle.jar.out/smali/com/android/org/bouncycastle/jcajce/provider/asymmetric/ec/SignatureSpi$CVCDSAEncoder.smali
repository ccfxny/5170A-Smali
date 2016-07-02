.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$CVCDSAEncoder;
.super Ljava/lang/Object;
.source "SignatureSpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CVCDSAEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeUnsigned(Ljava/math/BigInteger;)[B
    .locals 5
    .param p1, "val"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    .line 353
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 355
    .local v0, "res":[B
    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    .line 357
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 359
    .local v1, "tmp":[B
    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 364
    .end local v1    # "tmp":[B
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public decode([B)[Ljava/math/BigInteger;
    .locals 7
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 371
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/math/BigInteger;

    .line 373
    .local v2, "sig":[Ljava/math/BigInteger;
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 374
    .local v0, "first":[B
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 376
    .local v1, "second":[B
    array-length v3, v0

    invoke-static {p1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 377
    array-length v3, v0

    array-length v4, v1

    invoke-static {p1, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 379
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v2, v5

    .line 380
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v2, v6

    .line 382
    return-object v2
.end method

.method public encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 6
    .param p1, "r"    # Ljava/math/BigInteger;
    .param p2, "s"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 331
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$CVCDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 332
    .local v0, "first":[B
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$CVCDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 335
    .local v2, "second":[B
    array-length v3, v0

    array-length v4, v2

    if-le v3, v4, :cond_0

    .line 337
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 344
    .local v1, "res":[B
    :goto_0
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 345
    array-length v3, v1

    array-length v4, v2

    sub-int/2addr v3, v4

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 347
    return-object v1

    .line 341
    .end local v1    # "res":[B
    :cond_0
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .restart local v1    # "res":[B
    goto :goto_0
.end method
