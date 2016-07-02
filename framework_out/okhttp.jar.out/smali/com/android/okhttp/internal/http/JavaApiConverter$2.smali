.class final Lcom/android/okhttp/internal/http/JavaApiConverter$2;
.super Ljava/net/CacheResponse;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/http/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lcom/android/okhttp/Response$Body;

.field final synthetic val$headers:Lcom/android/okhttp/Headers;

.field final synthetic val$response:Lcom/android/okhttp/Response;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$Body;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$2;->val$headers:Lcom/android/okhttp/Headers;

    iput-object p2, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$2;->val$response:Lcom/android/okhttp/Response;

    iput-object p3, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$2;->val$body:Lcom/android/okhttp/Response$Body;

    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$2;->val$body:Lcom/android/okhttp/Response$Body;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$2;->val$body:Lcom/android/okhttp/Response$Body;

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Body;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$2;->val$headers:Lcom/android/okhttp/Headers;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$2;->val$response:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->statusLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
