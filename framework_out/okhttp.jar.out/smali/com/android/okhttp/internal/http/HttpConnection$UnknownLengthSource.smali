.class Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;
.super Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;
.source "HttpConnection.java"

# interfaces
.implements Lcom/android/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;)V
    .locals 0
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;)V

    .line 553
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_0

    .line 583
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->unexpectedEndOfInput()V

    .line 582
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    goto :goto_0
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;
    .locals 1
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$900(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/okio/BufferedSource;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;

    .line 573
    return-object p0
.end method

.method public read(Lcom/android/okio/OkBuffer;J)J
    .locals 6
    .param p1, "sink"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 557
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 558
    :cond_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    :cond_1
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    if-eqz v4, :cond_2

    move-wide v0, v2

    .line 568
    :goto_0
    return-wide v0

    .line 561
    :cond_2
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpConnection;->access$900(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSource;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lcom/android/okio/BufferedSource;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v0

    .line 562
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 563
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    .line 564
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->endOfInput(Z)V

    move-wide v0, v2

    .line 565
    goto :goto_0

    .line 567
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;->cacheWrite(Lcom/android/okio/OkBuffer;J)V

    goto :goto_0
.end method
