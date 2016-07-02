.class public interface abstract Lcom/android/okhttp/OkResponseCache;
.super Ljava/lang/Object;
.source "OkResponseCache.java"


# virtual methods
.method public abstract get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract maybeRemove(Lcom/android/okhttp/Request;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/android/okhttp/Response;)Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lcom/android/okhttp/ResponseSource;)V
.end method

.method public abstract update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
