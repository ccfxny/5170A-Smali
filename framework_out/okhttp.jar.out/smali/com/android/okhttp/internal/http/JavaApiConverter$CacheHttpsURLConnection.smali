.class final Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpsURLConnection;
.super Lcom/android/okhttp/internal/http/DelegatingHttpsURLConnection;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/JavaApiConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheHttpsURLConnection"
.end annotation


# instance fields
.field private final delegate:Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 635
    iput-object p1, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;

    .line 636
    return-void
.end method


# virtual methods
.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 647
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$400()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 655
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$400()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected handshake()Lcom/android/okhttp/Handshake;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;

    # getter for: Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->access$300(Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;)Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    return-object v0
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .param p1, "contentLength"    # J

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 660
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 643
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "socketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 651
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
