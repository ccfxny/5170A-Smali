.class final Lcom/android/okhttp/internal/spdy/Huffman$Node;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field private final children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;

.field private final symbol:I

.field private final terminalBits:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/android/okhttp/internal/spdy/Huffman$Node;

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    .line 176
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->symbol:I

    .line 177
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->terminalBits:I

    .line 178
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .param p1, "symbol"    # I
    .param p2, "bits"    # I

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    .line 188
    iput p1, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->symbol:I

    .line 189
    and-int/lit8 v0, p2, 0x7

    .line 190
    .local v0, "b":I
    if-nez v0, :cond_0

    const/16 v0, 0x8

    .end local v0    # "b":I
    :cond_0
    iput v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->terminalBits:I

    .line 191
    return-void
.end method

.method static synthetic access$400(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/Huffman$Node;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/Huffman$Node;

    .prologue
    .line 162
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->symbol:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/Huffman$Node;

    .prologue
    .line 162
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->terminalBits:I

    return v0
.end method
