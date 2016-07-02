.class final Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;
.super Ljava/lang/Object;
.source "HpackDraft05.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/HpackDraft05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final out:Lcom/android/okio/OkBuffer;


# direct methods
.method constructor <init>(Lcom/android/okio/OkBuffer;)V
    .locals 0
    .param p1, "out"    # Lcom/android/okio/OkBuffer;

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->out:Lcom/android/okio/OkBuffer;

    .line 403
    return-void
.end method


# virtual methods
.method writeByteString(Lcom/android/okio/ByteString;)V
    .locals 3
    .param p1, "data"    # Lcom/android/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p1}, Lcom/android/okio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->writeInt(III)V

    .line 445
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->out:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1}, Lcom/android/okio/OkBuffer;->write(Lcom/android/okio/ByteString;)Lcom/android/okio/OkBuffer;

    .line 446
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    const/16 v6, 0x40

    .line 407
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 408
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/spdy/Header;

    iget-object v1, v4, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okio/ByteString;

    .line 409
    .local v1, "name":Lcom/android/okio/ByteString;
    # getter for: Lcom/android/okhttp/internal/spdy/HpackDraft05;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    invoke-static {}, Lcom/android/okhttp/internal/spdy/HpackDraft05;->access$100()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 410
    .local v3, "staticIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 412
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x3f

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->writeInt(III)V

    .line 413
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okio/ByteString;

    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->writeByteString(Lcom/android/okio/ByteString;)V

    .line 407
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->out:Lcom/android/okio/OkBuffer;

    invoke-virtual {v4, v6}, Lcom/android/okio/OkBuffer;->writeByte(I)Lcom/android/okio/OkBuffer;

    .line 416
    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->writeByteString(Lcom/android/okio/ByteString;)V

    .line 417
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okio/ByteString;

    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->writeByteString(Lcom/android/okio/ByteString;)V

    goto :goto_1

    .line 420
    .end local v1    # "name":Lcom/android/okio/ByteString;
    .end local v3    # "staticIndex":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method writeInt(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    if-ge p1, p2, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->out:Lcom/android/okio/OkBuffer;

    or-int v2, p3, p1

    invoke-virtual {v1, v2}, Lcom/android/okio/OkBuffer;->writeByte(I)Lcom/android/okio/OkBuffer;

    .line 441
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->out:Lcom/android/okio/OkBuffer;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lcom/android/okio/OkBuffer;->writeByte(I)Lcom/android/okio/OkBuffer;

    .line 432
    sub-int/2addr p1, p2

    .line 435
    :goto_1
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 436
    and-int/lit8 v0, p1, 0x7f

    .line 437
    .local v0, "b":I
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->out:Lcom/android/okio/OkBuffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lcom/android/okio/OkBuffer;->writeByte(I)Lcom/android/okio/OkBuffer;

    .line 438
    ushr-int/lit8 p1, p1, 0x7

    .line 439
    goto :goto_1

    .line 440
    .end local v0    # "b":I
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->out:Lcom/android/okio/OkBuffer;

    invoke-virtual {v1, p1}, Lcom/android/okio/OkBuffer;->writeByte(I)Lcom/android/okio/OkBuffer;

    goto :goto_0
.end method
