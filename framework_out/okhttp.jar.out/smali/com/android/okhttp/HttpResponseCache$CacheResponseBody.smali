.class Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;
.super Lcom/android/okhttp/Response$Body;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodyIn:Ljava/io/InputStream;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/android/okhttp/Response$Body;-><init>()V

    .line 586
    iput-object p1, p0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 587
    iput-object p2, p0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 588
    iput-object p3, p0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->contentLength:Ljava/lang/String;

    .line 591
    new-instance v0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody$1;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody$1;-><init>(Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;Ljava/io/InputStream;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)V

    iput-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->bodyIn:Ljava/io/InputStream;

    .line 597
    return-void
.end method

.method static synthetic access$000(Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->bodyIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public contentLength()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->contentLength:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 611
    :cond_0
    :goto_0
    return-wide v2

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .line 600
    const/4 v0, 0x1

    return v0
.end method
