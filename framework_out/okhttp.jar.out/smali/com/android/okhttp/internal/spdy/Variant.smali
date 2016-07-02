.class interface abstract Lcom/android/okhttp/internal/spdy/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# virtual methods
.method public abstract getProtocol()Lcom/android/okhttp/Protocol;
.end method

.method public abstract maxFrameSize()I
.end method

.method public abstract newReader(Lcom/android/okio/BufferedSource;Z)Lcom/android/okhttp/internal/spdy/FrameReader;
.end method

.method public abstract newWriter(Lcom/android/okio/BufferedSink;Z)Lcom/android/okhttp/internal/spdy/FrameWriter;
.end method
