.class public final Lcom/android/okhttp/internal/http/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/CacheStrategy$Factory;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:Lcom/android/okhttp/Response$Body;

.field private static final GATEWAY_TIMEOUT_STATUS_LINE:Lcom/android/okhttp/internal/http/StatusLine;


# instance fields
.field public final cacheResponse:Lcom/android/okhttp/Response;

.field public final networkRequest:Lcom/android/okhttp/Request;

.field public final source:Lcom/android/okhttp/ResponseSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v1, Lcom/android/okhttp/internal/http/CacheStrategy$1;

    invoke-direct {v1}, Lcom/android/okhttp/internal/http/CacheStrategy$1;-><init>()V

    sput-object v1, Lcom/android/okhttp/internal/http/CacheStrategy;->EMPTY_BODY:Lcom/android/okhttp/Response$Body;

    .line 43
    :try_start_0
    new-instance v1, Lcom/android/okhttp/internal/http/StatusLine;

    const-string v2, "HTTP/1.1 504 Gateway Timeout"

    invoke-direct {v1, v2}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/okhttp/internal/http/CacheStrategy;->GATEWAY_TIMEOUT_STATUS_LINE:Lcom/android/okhttp/internal/http/StatusLine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private constructor <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;)V
    .locals 0
    .param p1, "networkRequest"    # Lcom/android/okhttp/Request;
    .param p2, "cacheResponse"    # Lcom/android/okhttp/Response;
    .param p3, "source"    # Lcom/android/okhttp/ResponseSource;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    .line 60
    iput-object p2, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    .line 61
    iput-object p3, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->source:Lcom/android/okhttp/ResponseSource;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/Request;
    .param p2, "x1"    # Lcom/android/okhttp/Response;
    .param p3, "x2"    # Lcom/android/okhttp/ResponseSource;
    .param p4, "x3"    # Lcom/android/okhttp/internal/http/CacheStrategy$1;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseSource;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/okhttp/Response$Body;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/okhttp/internal/http/CacheStrategy;->EMPTY_BODY:Lcom/android/okhttp/Response$Body;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/okhttp/internal/http/StatusLine;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/okhttp/internal/http/CacheStrategy;->GATEWAY_TIMEOUT_STATUS_LINE:Lcom/android/okhttp/internal/http/StatusLine;

    return-object v0
.end method

.method public static isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z
    .locals 5
    .param p0, "response"    # Lcom/android/okhttp/Response;
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v1

    .line 72
    .local v1, "responseCode":I
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    const/16 v3, 0xcb

    if-eq v1, v3, :cond_1

    const/16 v3, 0x12c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x12d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x19a

    if-eq v1, v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    .line 83
    .local v0, "responseCaching":Lcom/android/okhttp/CacheControl;
    const-string v3, "Authorization"

    invoke-virtual {p1, v3}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->isPublic()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->mustRevalidate()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 90
    :cond_2
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->noStore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    const/4 v2, 0x1

    goto :goto_0
.end method
