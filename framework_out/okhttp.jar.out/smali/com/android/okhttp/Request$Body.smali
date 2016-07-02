.class public abstract Lcom/android/okhttp/Request$Body;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Body"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/okhttp/MediaType;Ljava/io/File;)Lcom/android/okhttp/Request$Body;
    .locals 2
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 201
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    new-instance v0, Lcom/android/okhttp/Request$Body$2;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/Request$Body$2;-><init>(Lcom/android/okhttp/MediaType;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Lcom/android/okhttp/MediaType;Ljava/lang/String;)Lcom/android/okhttp/Request$Body;
    .locals 4
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 173
    .local v0, "bytes":[B
    invoke-static {p0, v0}, Lcom/android/okhttp/Request$Body;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/Request$Body;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 168
    .end local v0    # "bytes":[B
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; charset=utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object p0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/Request$Body;
    .locals 2
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # [B

    .prologue
    .line 181
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    new-instance v0, Lcom/android/okhttp/Request$Body$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/Request$Body$1;-><init>(Lcom/android/okhttp/MediaType;[B)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 157
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lcom/android/okhttp/MediaType;
.end method

.method public abstract writeTo(Lcom/android/okio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
