.class public Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
.super Ljava/lang/Object;
.source "PemHeader.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private getHashCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 53
    if-ne p1, p2, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 31
    instance-of v2, p1, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    if-nez v2, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 36
    check-cast v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    .line 38
    .local v0, "other":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    if-eq v0, p0, :cond_2

    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
