.class public Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA384Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;)V
    .locals 0
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 37
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/org/bouncycastle/util/Memoable;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->finish()V

    .line 55
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 56
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 57
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 58
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 59
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 60
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 62
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    .line 64
    const/16 v0, 0x30

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "SHA-384"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x30

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 78
    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    .line 79
    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    .line 80
    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    .line 81
    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    .line 82
    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    .line 83
    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    .line 84
    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H7:J

    .line 85
    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H8:J

    .line 86
    return-void
.end method

.method public reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lcom/android/org/bouncycastle/util/Memoable;

    .prologue
    .line 95
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    .line 97
    .local v0, "d":Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 98
    return-void
.end method
