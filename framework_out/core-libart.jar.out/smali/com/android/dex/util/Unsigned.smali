.class public final Lcom/android/dex/util/Unsigned;
.super Ljava/lang/Object;
.source "Unsigned.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 8
    .param p0, "uintA"    # I
    .param p1, "uintB"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 35
    if-ne p0, p1, :cond_0

    .line 36
    const/4 v4, 0x0

    .line 40
    :goto_0
    return v4

    .line 38
    :cond_0
    int-to-long v4, p0

    and-long v0, v4, v6

    .line 39
    .local v0, "a":J
    int-to-long v4, p1

    and-long v2, v4, v6

    .line 40
    .local v2, "b":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static compare(SS)I
    .locals 3
    .param p0, "ushortA"    # S
    .param p1, "ushortB"    # S

    .prologue
    const v2, 0xffff

    .line 26
    if-ne p0, p1, :cond_0

    .line 27
    const/4 v2, 0x0

    .line 31
    :goto_0
    return v2

    .line 29
    :cond_0
    and-int v0, p0, v2

    .line 30
    .local v0, "a":I
    and-int v1, p1, v2

    .line 31
    .local v1, "b":I
    if-ge v0, v1, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
