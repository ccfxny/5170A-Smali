.class final enum Lcom/android/okhttp/internal/spdy/Huffman$Codec;
.super Ljava/lang/Enum;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Codec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/internal/spdy/Huffman$Codec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/internal/spdy/Huffman$Codec;

.field public static final enum REQUEST:Lcom/android/okhttp/internal/spdy/Huffman$Codec;

.field public static final enum RESPONSE:Lcom/android/okhttp/internal/spdy/Huffman$Codec;


# instance fields
.field private final codes:[I

.field private final lengths:[B

.field private final root:Lcom/android/okhttp/internal/spdy/Huffman$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    const-string v1, "REQUEST"

    # getter for: Lcom/android/okhttp/internal/spdy/Huffman;->REQUEST_CODES:[I
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Huffman;->access$000()[I

    move-result-object v2

    # getter for: Lcom/android/okhttp/internal/spdy/Huffman;->REQUEST_CODE_LENGTHS:[B
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Huffman;->access$100()[B

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/okhttp/internal/spdy/Huffman$Codec;-><init>(Ljava/lang/String;I[I[B)V

    sput-object v0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->REQUEST:Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    .line 35
    new-instance v0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    const-string v1, "RESPONSE"

    # getter for: Lcom/android/okhttp/internal/spdy/Huffman;->RESPONSE_CODES:[I
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Huffman;->access$200()[I

    move-result-object v2

    # getter for: Lcom/android/okhttp/internal/spdy/Huffman;->RESPONSE_CODE_LENGTHS:[B
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Huffman;->access$300()[B

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/okhttp/internal/spdy/Huffman$Codec;-><init>(Ljava/lang/String;I[I[B)V

    sput-object v0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->RESPONSE:Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    sget-object v1, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->REQUEST:Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->RESPONSE:Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->$VALUES:[Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[I[B)V
    .locals 1
    .param p3, "codes"    # [I
    .param p4, "lengths"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[B)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    new-instance v0, Lcom/android/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->root:Lcom/android/okhttp/internal/spdy/Huffman$Node;

    .line 46
    invoke-direct {p0, p3, p4}, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->buildTree([I[B)V

    .line 47
    iput-object p3, p0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->codes:[I

    .line 48
    iput-object p4, p0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->lengths:[B

    .line 49
    return-void
.end method

.method private addCode(IIB)V
    .locals 8
    .param p1, "sym"    # I
    .param p2, "code"    # I
    .param p3, "len"    # B

    .prologue
    .line 138
    new-instance v5, Lcom/android/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v5, p1, p3}, Lcom/android/okhttp/internal/spdy/Huffman$Node;-><init>(II)V

    .line 140
    .local v5, "terminal":Lcom/android/okhttp/internal/spdy/Huffman$Node;
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->root:Lcom/android/okhttp/internal/spdy/Huffman$Node;

    .line 141
    .local v0, "current":Lcom/android/okhttp/internal/spdy/Huffman$Node;
    :goto_0
    const/16 v6, 0x8

    if-le p3, v6, :cond_2

    .line 142
    add-int/lit8 v6, p3, -0x8

    int-to-byte p3, v6

    .line 143
    ushr-int v6, p2, p3

    and-int/lit16 v2, v6, 0xff

    .line 144
    .local v2, "i":I
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$400(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    move-result-object v6

    if-nez v6, :cond_0

    .line 145
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "invalid dictionary: prefix not unique"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 147
    :cond_0
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$400(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    move-result-object v6

    aget-object v6, v6, v2

    if-nez v6, :cond_1

    .line 148
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$400(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    move-result-object v6

    new-instance v7, Lcom/android/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v7}, Lcom/android/okhttp/internal/spdy/Huffman$Node;-><init>()V

    aput-object v7, v6, v2

    .line 150
    :cond_1
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$400(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    move-result-object v6

    aget-object v0, v6, v2

    .line 151
    goto :goto_0

    .line 153
    .end local v2    # "i":I
    :cond_2
    rsub-int/lit8 v3, p3, 0x8

    .line 154
    .local v3, "shift":I
    shl-int v6, p2, v3

    and-int/lit16 v4, v6, 0xff

    .line 155
    .local v4, "start":I
    const/4 v6, 0x1

    shl-int v1, v6, v3

    .line 156
    .local v1, "end":I
    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    add-int v6, v4, v1

    if-ge v2, v6, :cond_3

    .line 157
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$400(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    move-result-object v6

    aput-object v5, v6, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_3
    return-void
.end method

.method private buildTree([I[B)V
    .locals 3
    .param p1, "codes"    # [I
    .param p2, "lengths"    # [B

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 133
    aget v1, p1, v0

    aget-byte v2, p2, v0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->addCode(IIB)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/internal/spdy/Huffman$Codec;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/internal/spdy/Huffman$Codec;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->$VALUES:[Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    invoke-virtual {v0}, [Lcom/android/okhttp/internal/spdy/Huffman$Codec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    return-object v0
.end method


# virtual methods
.method decode(Lcom/android/okio/ByteString;)Lcom/android/okio/ByteString;
    .locals 1
    .param p1, "buf"    # Lcom/android/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/android/okio/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->decode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/okio/ByteString;->of([B)Lcom/android/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method decode([B)[B
    .locals 8
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->root:Lcom/android/okhttp/internal/spdy/Huffman$Node;

    .line 96
    .local v6, "node":Lcom/android/okhttp/internal/spdy/Huffman$Node;
    const/4 v3, 0x0

    .line 97
    .local v3, "current":I
    const/4 v5, 0x0

    .line 98
    .local v5, "nbits":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_3

    .line 99
    aget-byte v7, p1, v4

    and-int/lit16 v0, v7, 0xff

    .line 100
    .local v0, "b":I
    shl-int/lit8 v7, v3, 0x8

    or-int v3, v7, v0

    .line 101
    add-int/lit8 v5, v5, 0x8

    .line 102
    :goto_1
    const/16 v7, 0x8

    if-lt v5, v7, :cond_1

    .line 103
    add-int/lit8 v7, v5, -0x8

    ushr-int v7, v3, v7

    and-int/lit16 v2, v7, 0xff

    .line 104
    .local v2, "c":I
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$400(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    move-result-object v7

    aget-object v6, v7, v2

    .line 105
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$400(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    move-result-object v7

    if-nez v7, :cond_0

    .line 107
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->symbol:I
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$500(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->terminalBits:I
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$600(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I

    move-result v7

    sub-int/2addr v5, v7

    .line 109
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->root:Lcom/android/okhttp/internal/spdy/Huffman$Node;

    goto :goto_1

    .line 112
    :cond_0
    add-int/lit8 v5, v5, -0x8

    goto :goto_1

    .line 98
    .end local v2    # "c":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "b":I
    .restart local v2    # "c":I
    :cond_2
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->symbol:I
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$500(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 124
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->terminalBits:I
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$600(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I

    move-result v7

    sub-int/2addr v5, v7

    .line 125
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->root:Lcom/android/okhttp/internal/spdy/Huffman$Node;

    .line 117
    .end local v2    # "c":I
    :cond_3
    if-lez v5, :cond_4

    .line 118
    rsub-int/lit8 v7, v5, 0x8

    shl-int v7, v3, v7

    and-int/lit16 v2, v7, 0xff

    .line 119
    .restart local v2    # "c":I
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$400(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    move-result-object v7

    aget-object v6, v7, v2

    .line 120
    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$400(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    move-result-object v7

    if-nez v7, :cond_4

    # getter for: Lcom/android/okhttp/internal/spdy/Huffman$Node;->terminalBits:I
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->access$600(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I

    move-result v7

    if-le v7, v5, :cond_2

    .line 128
    .end local v2    # "c":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method encode([BLjava/io/OutputStream;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .local v2, "current":J
    const/4 v5, 0x0

    .line 55
    .local v5, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_1

    .line 56
    aget-byte v7, p1, v4

    and-int/lit16 v0, v7, 0xff

    .line 57
    .local v0, "b":I
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->codes:[I

    aget v1, v7, v0

    .line 58
    .local v1, "code":I
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->lengths:[B

    aget-byte v6, v7, v0

    .line 60
    .local v6, "nbits":I
    shl-long/2addr v2, v6

    .line 61
    int-to-long v8, v1

    or-long/2addr v2, v8

    .line 62
    add-int/2addr v5, v6

    .line 64
    :goto_1
    const/16 v7, 0x8

    if-lt v5, v7, :cond_0

    .line 65
    add-int/lit8 v5, v5, -0x8

    .line 66
    shr-long v8, v2, v5

    long-to-int v7, v8

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "b":I
    .end local v1    # "code":I
    .end local v6    # "nbits":I
    :cond_1
    if-lez v5, :cond_2

    .line 71
    rsub-int/lit8 v7, v5, 0x8

    shl-long/2addr v2, v7

    .line 72
    const/16 v7, 0xff

    ushr-int/2addr v7, v5

    int-to-long v8, v7

    or-long/2addr v2, v8

    .line 73
    long-to-int v7, v2

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 75
    :cond_2
    return-void
.end method

.method encodedLength([B)I
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    .line 78
    const-wide/16 v2, 0x0

    .line 80
    .local v2, "len":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 81
    aget-byte v4, p1, v1

    and-int/lit16 v0, v4, 0xff

    .line 82
    .local v0, "b":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->lengths:[B

    aget-byte v4, v4, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "b":I
    :cond_0
    const-wide/16 v4, 0x7

    add-long/2addr v4, v2

    const/4 v6, 0x3

    shr-long/2addr v4, v6

    long-to-int v4, v4

    return v4
.end method
