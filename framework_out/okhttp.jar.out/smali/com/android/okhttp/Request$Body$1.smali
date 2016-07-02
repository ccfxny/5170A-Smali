.class final Lcom/android/okhttp/Request$Body$1;
.super Lcom/android/okhttp/Request$Body;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/Request$Body;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/Request$Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:[B

.field final synthetic val$contentType:Lcom/android/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/android/okhttp/MediaType;[B)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/okhttp/Request$Body$1;->val$contentType:Lcom/android/okhttp/MediaType;

    iput-object p2, p0, Lcom/android/okhttp/Request$Body$1;->val$content:[B

    invoke-direct {p0}, Lcom/android/okhttp/Request$Body;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/okhttp/Request$Body$1;->val$content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/okhttp/Request$Body$1;->val$contentType:Lcom/android/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/android/okio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lcom/android/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/okhttp/Request$Body$1;->val$content:[B

    invoke-interface {p1, v0}, Lcom/android/okio/BufferedSink;->write([B)Lcom/android/okio/BufferedSink;

    .line 195
    return-void
.end method
