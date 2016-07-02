.class public abstract Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.super Ljava/lang/Object;
.source "LongDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/ExtendedDigest;
.implements Lcom/android/org/bouncycastle/util/Memoable;


# static fields
.field private static final BYTE_LENGTH:I = 0x80

.field static final K:[J


# instance fields
.field protected H1:J

.field protected H2:J

.field protected H3:J

.field protected H4:J

.field protected H5:J

.field protected H6:J

.field protected H7:J

.field protected H8:J

.field private W:[J

.field private byteCount1:J

.field private byteCount2:J

.field private wOff:I

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    const/16 v0, 0x50

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    return-void

    :array_0
    .array-data 8
        0x428a2f98d728ae22L    # 3.5989662528217666E12
        0x7137449123ef65cdL    # 2.367405559035152E237
        -0x4a3f043013b2c4d1L    # -9.0786554787018E-50
        -0x164a245a7e762444L
        0x3956c25bf348b538L
        0x59f111f1b605d019L    # 1.8054860536953294E125
        -0x6dc07d5b50e6b065L    # -8.717181310573585E-221
        -0x54e3a12a25927ee8L
        -0x27f855675cfcfdbeL    # -1.1656291332323638E116
        0x12835b0145706fbeL
        0x243185be4ee4b28cL    # 2.410773468256423E-134
        0x550c7dc3d5ffb4e2L    # 4.985403983718413E101
        0x72be5d74f27b896fL    # 5.183352230240388E244
        -0x7f214e01c4e9694fL
        -0x6423f958da38edcbL
        -0x3e640e8b3096d96cL    # -1.1720222785268623E8
        -0x1b64963e610eb52eL    # -4.339261227288659E176
        -0x1041b879c7b0da1dL    # -1.836300920646737E230
        0xfc19dc68b8cd5b5L    # 8.864787397362889E-233
        0x240ca1cc77ac9c65L    # 4.924067956729057E-135
        0x2de92c6f592b0275L    # 1.5818166760957606E-87
        0x4a7484aa6ea6e483L    # 4.79798724707082E50
        0x5cb0a9dcbd41fbd4L    # 3.100593885146353E138
        0x76f988da831153b5L    # 1.2864857866870779E265
        -0x67c1aead11992055L
        -0x57ce3992d24bcdf0L    # -4.511217866312199E-115
        -0x4ffcd8376704dec1L    # -2.0678662886600765E-77
        -0x40a680384110f11cL    # -0.0015563440936014411
        -0x391ff40cc257703eL    # -2.603722742751637E33
        -0x2a586eb86cf558dbL    # -4.222814448133811E104
        0x6ca6351e003826fL
        0x142929670a0e6e70L
        0x27b70a8546d22ffcL
        0x2e1b21385c26c926L    # 1.3637893953385892E-86
        0x4d2c6dfc5ac42aedL    # 5.84763610164635E63
        0x53380d139d95b3dfL    # 7.838866619197482E92
        0x650a73548baf63deL    # 5.35921865865203E178
        0x766a0abb3c77b2a8L    # 2.5625906234442426E262
        -0x7e3d36d1b812511aL    # -3.506432391784029E-300
        -0x6d8dd37aeb7dcac5L    # -8.044358981173315E-220
        -0x5d40175eb30efc9cL
        -0x57e599b443bdcfffL
        -0x3db4748f2f07686fL    # -2.366070870891841E11
        -0x3893ae5cf9ab41d0L    # -1.17632082693375E36
        -0x2e6d17e62910ade8L    # -9.182337425192181E84
        -0x2966f9dbaa9a56f0L    # -1.4692477645833556E109
        -0xbf1ca7aa88edfd6L
        0x106aa07032bbd1b8L
        0x19a4c116b8d2d0c8L
        0x1e376c085141ab53L    # 4.067301537801791E-163
        0x2748774cdf8eeb99L    # 1.894937972556452E-119
        0x34b0bcb5e19b48a8L    # 6.82593759724882E-55
        0x391c0cb3c5c95a63L    # 1.3505399862746614E-33
        0x4ed8aa4ae3418acbL    # 6.809319594147137E71
        0x5b9cca4f7763e373L    # 2.0435436325319052E133
        0x682e6ff3d6b2b8a3L    # 6.943421982965376E193
        0x748f82ee5defb2fcL    # 2.887850816088868E253
        0x78a5636f43172f60L    # 1.4463210820003646E273
        -0x7b3787eb5e0f548eL
        -0x7338fdf7e59bc614L
        -0x6f410005dc9ce1d8L    # -5.111680914909667E-228
        -0x5baf9314217d4217L    # -9.03940504491957E-134
        -0x41065c084d3986ebL    # -2.445268471406536E-5
        -0x398e870d1c8dacd5L    # -2.2148969568888243E31
        -0x35d8c13115d99e64L    # -1.6986554718624063E49
        -0x2e794738de3f3df9L    # -5.517613964471652E84
        -0x15258229321f14e2L    # -5.315750124715331E206
        -0xa82b08011912e88L    # -8.801976642581914E257
        0x6f067aa72176fbaL
        0xa637dc5a2c898a6L
        0x113f9804bef90daeL
        0x1b710b35131c471bL
        0x28db77f523047d84L    # 7.138679721560702E-112
        0x32caab7b40c72493L    # 5.064907242937011E-64
        0x3c9ebe0a15c9bebcL    # 1.0665892261952011E-16
        0x431d67c49c100d4cL    # 2.069217113539411E15
        0x4cc5d4becb3e42b6L    # 7.016224550123326E61
        0x597f299cfc657e2aL    # 1.2875119238090917E123
        0x5fcb6fab3ad6faecL    # 2.873901462601813E153
        0x6c44198c4a475817L    # 3.3832852265175575E213
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 34
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 35
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V
    .locals 1
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/LongDigest;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    .line 44
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 47
    return-void
.end method

.method private Ch(JJJ)J
    .locals 5
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    .prologue
    .line 300
    and-long v0, p1, p3

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v2, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Maj(JJJ)J
    .locals 5
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    .prologue
    .line 308
    and-long v0, p1, p3

    and-long v2, p1, p5

    xor-long/2addr v0, v2

    and-long v2, p3, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma0(J)J
    .locals 7
    .param p1, "x"    # J

    .prologue
    .line 326
    const/16 v0, 0x3f

    shl-long v0, p1, v0

    const/4 v2, 0x1

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, p1, v2

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma1(J)J
    .locals 7
    .param p1, "x"    # J

    .prologue
    .line 332
    const/16 v0, 0x2d

    shl-long v0, p1, v0

    const/16 v2, 0x13

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long v2, p1, v2

    const/16 v4, 0x3d

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x6

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum0(J)J
    .locals 7
    .param p1, "x"    # J

    .prologue
    .line 314
    const/16 v0, 0x24

    shl-long v0, p1, v0

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x1e

    shl-long v2, p1, v2

    const/16 v4, 0x22

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    shl-long v2, p1, v2

    const/16 v4, 0x27

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum1(J)J
    .locals 7
    .param p1, "x"    # J

    .prologue
    .line 320
    const/16 v0, 0x32

    shl-long v0, p1, v0

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x2e

    shl-long v2, p1, v2

    const/16 v4, 0x12

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    shl-long v2, p1, v2

    const/16 v4, 0x29

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private adjustByteCounts()V
    .locals 8

    .prologue
    const-wide v6, 0x1fffffffffffffffL

    .line 187
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 189
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 190
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    and-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method protected copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V
    .locals 4
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/LongDigest;

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 53
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 54
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 55
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 57
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 58
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 59
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 60
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 61
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 62
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 63
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 64
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 66
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 67
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 68
    return-void
.end method

.method public finish()V
    .locals 7

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 128
    iget-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/4 v6, 0x3

    shl-long v2, v4, v6

    .line 129
    .local v2, "lowBitLength":J
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 134
    .local v0, "hiBitLength":J
    const/16 v4, -0x80

    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 136
    :goto_0
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v4, :cond_0

    .line 138
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processLength(JJ)V

    .line 143
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 144
    return-void
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 166
    const/16 v0, 0x80

    return v0
.end method

.method protected processBlock()V
    .locals 38

    .prologue
    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 214
    const/16 v12, 0x10

    .local v12, "t":I
    :goto_0
    const/16 v5, 0x4f

    if-gt v12, v5, :cond_0

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v21, v12, -0x2

    aget-wide v24, v13, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sigma1(J)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v21, v12, -0x7

    aget-wide v28, v13, v21

    add-long v24, v24, v28

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v21, v12, -0xf

    aget-wide v28, v13, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sigma0(J)J

    move-result-wide v28

    add-long v24, v24, v28

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v21, v12, -0x10

    aget-wide v28, v13, v21

    add-long v24, v24, v28

    aput-wide v24, v5, v12

    .line 214
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 222
    :cond_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 223
    .local v14, "a":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    move-wide/from16 v16, v0

    .line 224
    .local v16, "b":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    move-wide/from16 v18, v0

    .line 225
    .local v18, "c":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    move-wide/from16 v22, v0

    .line 226
    .local v22, "d":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 227
    .local v6, "e":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 228
    .local v8, "f":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 229
    .local v10, "g":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    move-wide/from16 v26, v0

    .line 231
    .local v26, "h":J
    const/4 v12, 0x0

    .line 232
    const/4 v4, 0x0

    .local v4, "i":I
    move/from16 v20, v12

    .end local v12    # "t":I
    .local v20, "t":I
    :goto_1
    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    .line 235
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v24

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v28

    add-long v24, v24, v28

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v28, v5, v20

    add-long v24, v24, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v12, v20, 0x1

    .end local v20    # "t":I
    .restart local v12    # "t":I
    aget-wide v28, v5, v20

    add-long v24, v24, v28

    add-long v26, v26, v24

    .line 236
    add-long v22, v22, v26

    .line 237
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v24

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v28

    add-long v24, v24, v28

    add-long v36, v26, v24

    .line 240
    .end local v26    # "h":J
    .local v36, "h":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v28

    move-object/from16 v21, p0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-direct/range {v21 .. v27}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v24

    add-long v24, v24, v28

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v28, v5, v12

    add-long v24, v24, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v20, v12, 0x1

    .end local v12    # "t":I
    .restart local v20    # "t":I
    aget-wide v28, v5, v12

    add-long v24, v24, v28

    add-long v10, v10, v24

    .line 241
    add-long v18, v18, v10

    .line 242
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v32

    move-object/from16 v25, p0

    move-wide/from16 v26, v36

    move-wide/from16 v28, v14

    move-wide/from16 v30, v16

    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v24

    add-long v24, v24, v32

    add-long v10, v10, v24

    .line 245
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v32

    move-object/from16 v25, p0

    move-wide/from16 v26, v18

    move-wide/from16 v28, v22

    move-wide/from16 v30, v6

    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v24

    add-long v24, v24, v32

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v28, v5, v20

    add-long v24, v24, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v12, v20, 0x1

    .end local v20    # "t":I
    .restart local v12    # "t":I
    aget-wide v28, v5, v20

    add-long v24, v24, v28

    add-long v8, v8, v24

    .line 246
    add-long v16, v16, v8

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v32

    move-object/from16 v25, p0

    move-wide/from16 v26, v10

    move-wide/from16 v28, v36

    move-wide/from16 v30, v14

    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v24

    add-long v24, v24, v32

    add-long v8, v8, v24

    .line 250
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v32

    move-object/from16 v25, p0

    move-wide/from16 v26, v16

    move-wide/from16 v28, v18

    move-wide/from16 v30, v22

    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v24

    add-long v24, v24, v32

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v28, v5, v12

    add-long v24, v24, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v20, v12, 0x1

    .end local v12    # "t":I
    .restart local v20    # "t":I
    aget-wide v28, v5, v12

    add-long v24, v24, v28

    add-long v6, v6, v24

    .line 251
    add-long/2addr v14, v6

    .line 252
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v32

    move-object/from16 v25, p0

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    move-wide/from16 v30, v36

    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v24

    add-long v24, v24, v32

    add-long v6, v6, v24

    .line 255
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v24

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v28

    add-long v24, v24, v28

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v28, v5, v20

    add-long v24, v24, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v12, v20, 0x1

    .end local v20    # "t":I
    .restart local v12    # "t":I
    aget-wide v28, v5, v20

    add-long v24, v24, v28

    add-long v22, v22, v24

    .line 256
    add-long v26, v36, v22

    .line 257
    .end local v36    # "h":J
    .restart local v26    # "h":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v24

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v28

    add-long v24, v24, v28

    add-long v22, v22, v24

    .line 260
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v32

    move-object/from16 v25, p0

    move-wide/from16 v28, v14

    move-wide/from16 v30, v16

    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v24

    add-long v24, v24, v32

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v28, v5, v12

    add-long v24, v24, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v20, v12, 0x1

    .end local v12    # "t":I
    .restart local v20    # "t":I
    aget-wide v28, v5, v12

    add-long v24, v24, v28

    add-long v18, v18, v24

    .line 261
    add-long v10, v10, v18

    .line 262
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v24

    move-object/from16 v29, p0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    invoke-direct/range {v29 .. v35}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v28

    add-long v24, v24, v28

    add-long v18, v18, v24

    .line 265
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v24

    move-object/from16 v29, p0

    move-wide/from16 v30, v10

    move-wide/from16 v32, v26

    move-wide/from16 v34, v14

    invoke-direct/range {v29 .. v35}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v28

    add-long v24, v24, v28

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v28, v5, v20

    add-long v24, v24, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v12, v20, 0x1

    .end local v20    # "t":I
    .restart local v12    # "t":I
    aget-wide v28, v5, v20

    add-long v24, v24, v28

    add-long v16, v16, v24

    .line 266
    add-long v8, v8, v16

    .line 267
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v24

    move-object/from16 v29, p0

    move-wide/from16 v30, v18

    move-wide/from16 v32, v22

    move-wide/from16 v34, v6

    invoke-direct/range {v29 .. v35}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v28

    add-long v24, v24, v28

    add-long v16, v16, v24

    .line 270
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v24

    move-object/from16 v29, p0

    move-wide/from16 v30, v8

    move-wide/from16 v32, v10

    move-wide/from16 v34, v26

    invoke-direct/range {v29 .. v35}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v28

    add-long v24, v24, v28

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v28, v5, v12

    add-long v24, v24, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v20, v12, 0x1

    .end local v12    # "t":I
    .restart local v20    # "t":I
    aget-wide v28, v5, v12

    add-long v24, v24, v28

    add-long v14, v14, v24

    .line 271
    add-long/2addr v6, v14

    .line 272
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v24

    move-object/from16 v29, p0

    move-wide/from16 v30, v16

    move-wide/from16 v32, v18

    move-wide/from16 v34, v22

    invoke-direct/range {v29 .. v35}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v28

    add-long v24, v24, v28

    add-long v14, v14, v24

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 275
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    move-wide/from16 v24, v0

    add-long v24, v24, v14

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 276
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    move-wide/from16 v24, v0

    add-long v24, v24, v16

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 277
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    move-wide/from16 v24, v0

    add-long v24, v24, v18

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 278
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    move-wide/from16 v24, v0

    add-long v24, v24, v22

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 279
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    move-wide/from16 v24, v0

    add-long v24, v24, v6

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 280
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    move-wide/from16 v24, v0

    add-long v24, v24, v8

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 281
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    move-wide/from16 v24, v0

    add-long v24, v24, v10

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 282
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    move-wide/from16 v24, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 287
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 288
    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    const-wide/16 v24, 0x0

    aput-wide v24, v5, v4

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 292
    :cond_2
    return-void
.end method

.method protected processLength(JJ)V
    .locals 3
    .param p1, "lowW"    # J
    .param p3, "hiW"    # J

    .prologue
    const/16 v1, 0xe

    .line 198
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-le v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide p3, v0, v1

    .line 204
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    const/16 v1, 0xf

    aput-wide p1, v0, v1

    .line 205
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 175
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 179
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 148
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 149
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 151
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    aput-byte v2, v1, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 158
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide v4, v1, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 75
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 78
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 81
    :cond_0
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 82
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 92
    :goto_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 94
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 96
    add-int/lit8 p2, p2, 0x1

    .line 97
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 103
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 109
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    goto :goto_1

    .line 115
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 117
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 119
    add-int/lit8 p2, p2, 0x1

    .line 120
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 122
    :cond_2
    return-void
.end method
