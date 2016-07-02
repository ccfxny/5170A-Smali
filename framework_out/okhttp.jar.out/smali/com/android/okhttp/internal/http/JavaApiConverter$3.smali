.class final Lcom/android/okhttp/internal/http/JavaApiConverter$3;
.super Lcom/android/okhttp/Response$Body;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/http/JavaApiConverter;->createOkBody(Lcom/android/okhttp/Headers;Ljava/io/InputStream;)Lcom/android/okhttp/Response$Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Ljava/io/InputStream;

.field final synthetic val$okHeaders:Lcom/android/okhttp/Headers;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Headers;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$3;->val$okHeaders:Lcom/android/okhttp/Headers;

    iput-object p2, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$3;->val$body:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/android/okhttp/Response$Body;-><init>()V

    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$3;->val$body:Ljava/io/InputStream;

    return-object v0
.end method

.method public contentLength()J
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$3;->val$okHeaders:Lcom/android/okhttp/Headers;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$3;->val$okHeaders:Lcom/android/okhttp/Headers;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "contentTypeHeader":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v1

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
    .line 344
    const/4 v0, 0x1

    return v0
.end method
