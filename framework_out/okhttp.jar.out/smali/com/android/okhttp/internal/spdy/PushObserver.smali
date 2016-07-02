.class public interface abstract Lcom/android/okhttp/internal/spdy/PushObserver;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final CANCEL:Lcom/android/okhttp/internal/spdy/PushObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/okhttp/internal/spdy/PushObserver$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/PushObserver$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/spdy/PushObserver;->CANCEL:Lcom/android/okhttp/internal/spdy/PushObserver;

    return-void
.end method


# virtual methods
.method public abstract onData(ILcom/android/okio/BufferedSource;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract onRequest(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onReset(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
.end method
