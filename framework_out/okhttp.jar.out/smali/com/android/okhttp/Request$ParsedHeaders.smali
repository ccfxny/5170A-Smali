.class Lcom/android/okhttp/Request$ParsedHeaders;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsedHeaders"
.end annotation


# instance fields
.field private proxyAuthorization:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Headers;)V
    .locals 4
    .param p1, "headers"    # Lcom/android/okhttp/Headers;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 137
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "value":Ljava/lang/String;
    const-string v3, "User-Agent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iput-object v2, p0, Lcom/android/okhttp/Request$ParsedHeaders;->userAgent:Ljava/lang/String;

    .line 136
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const-string v3, "Proxy-Authorization"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iput-object v2, p0, Lcom/android/okhttp/Request$ParsedHeaders;->proxyAuthorization:Ljava/lang/String;

    goto :goto_1

    .line 145
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static synthetic access$600(Lcom/android/okhttp/Request$ParsedHeaders;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request$ParsedHeaders;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/okhttp/Request$ParsedHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/okhttp/Request$ParsedHeaders;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request$ParsedHeaders;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/okhttp/Request$ParsedHeaders;->proxyAuthorization:Ljava/lang/String;

    return-object v0
.end method
