.class Lcom/android/okhttp/Job$RealResponseBody;
.super Lcom/android/okhttp/Response$Body;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RealResponseBody"
.end annotation


# instance fields
.field private in:Ljava/io/InputStream;

.field private final response:Lcom/android/okhttp/Response;

.field private final source:Lcom/android/okio/Source;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Response;Lcom/android/okio/Source;)V
    .locals 0
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .param p2, "source"    # Lcom/android/okio/Source;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/okhttp/Response$Body;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/android/okhttp/Job$RealResponseBody;->response:Lcom/android/okhttp/Response;

    .line 243
    iput-object p2, p0, Lcom/android/okhttp/Job$RealResponseBody;->source:Lcom/android/okio/Source;

    .line 244
    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/okhttp/Job$RealResponseBody;->in:Ljava/io/InputStream;

    .line 265
    .local v0, "result":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Job$RealResponseBody;->source:Lcom/android/okio/Source;

    invoke-static {v1}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Source;)Lcom/android/okio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    .end local v0    # "result":Ljava/io/InputStream;
    iput-object v0, p0, Lcom/android/okhttp/Job$RealResponseBody;->in:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public contentLength()J
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/okhttp/Job$RealResponseBody;->response:Lcom/android/okhttp/Response;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 3

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/okhttp/Job$RealResponseBody;->response:Lcom/android/okhttp/Response;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public source()Lcom/android/okio/Source;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/okhttp/Job$RealResponseBody;->source:Lcom/android/okio/Source;

    return-object v0
.end method
