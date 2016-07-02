.class final Lcom/android/okio/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 4
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .prologue
    .line 28
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 31
    :cond_1
    return-void
.end method

.method public static reverseBytesInt(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 41
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static reverseBytesLong(J)J
    .locals 8
    .param p0, "v"    # J

    .prologue
    const/16 v7, 0x38

    const/16 v6, 0x28

    const/16 v5, 0x18

    const/16 v4, 0x8

    .line 48
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    ushr-long/2addr v0, v7

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v5

    or-long/2addr v0, v2

    const-wide v2, 0xff00000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static reverseBytesShort(S)S
    .locals 4
    .param p0, "s"    # S

    .prologue
    .line 34
    const v2, 0xffff

    and-int v0, p0, v2

    .line 35
    .local v0, "i":I
    const v2, 0xff00

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v0, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int v1, v2, v3

    .line 37
    .local v1, "reversed":I
    int-to-short v2, v1

    return v2
.end method

.method public static sneakyRethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/okio/Util;->sneakyThrow2(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method private static sneakyThrow2(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    throw p0
.end method
