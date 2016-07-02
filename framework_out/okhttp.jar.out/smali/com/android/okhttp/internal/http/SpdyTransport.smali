.class public final Lcom/android/okhttp/internal/http/SpdyTransport;
.super Ljava/lang/Object;
.source "SpdyTransport.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;
    }
.end annotation


# static fields
.field private static final HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private final spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

.field private stream:Lcom/android/okhttp/internal/spdy/SpdyStream;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/okio/ByteString;

    const-string v1, "connection"

    invoke-static {v1}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    invoke-static {v1}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    invoke-static {v1}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    invoke-static {v1}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "transfer-encoding"

    invoke-static {v1}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/SpdyTransport;->SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/okio/ByteString;

    const-string v1, "connection"

    invoke-static {v1}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    invoke-static {v1}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    invoke-static {v1}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    invoke-static {v1}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "te"

    invoke-static {v1}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "transfer-encoding"

    invoke-static {v2}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoding"

    invoke-static {v2}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "upgrade"

    invoke-static {v2}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/SpdyTransport;->HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/internal/spdy/SpdyConnection;)V
    .locals 0
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p2, "spdyConnection"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 78
    iput-object p2, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .line 79
    return-void
.end method

.method private static isProhibitedHeader(Lcom/android/okhttp/Protocol;Lcom/android/okio/ByteString;)Z
    .locals 1
    .param p0, "protocol"    # Lcom/android/okhttp/Protocol;
    .param p1, "name"    # Lcom/android/okio/ByteString;

    .prologue
    .line 232
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    .line 233
    sget-object v0, Lcom/android/okhttp/internal/http/SpdyTransport;->SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 235
    :goto_0
    return v0

    .line 234
    :cond_0
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne p0, v0, :cond_1

    .line 235
    sget-object v0, Lcom/android/okhttp/internal/http/SpdyTransport;->HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readNameValueBlock(Ljava/util/List;Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;
    .locals 13
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;",
            "Lcom/android/okhttp/Protocol;",
            ")",
            "Lcom/android/okhttp/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    const/4 v5, 0x0

    .line 180
    .local v5, "status":Ljava/lang/String;
    const-string v8, "HTTP/1.1"

    .line 182
    .local v8, "version":Ljava/lang/String;
    new-instance v1, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 183
    .local v1, "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    sget-object v9, Lcom/android/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/okhttp/Protocol;->name:Lcom/android/okio/ByteString;

    invoke-virtual {v10}, Lcom/android/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 184
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 185
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/okhttp/internal/spdy/Header;

    iget-object v3, v9, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okio/ByteString;

    .line 186
    .local v3, "name":Lcom/android/okio/ByteString;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/okhttp/internal/spdy/Header;

    iget-object v9, v9, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okio/ByteString;

    invoke-virtual {v9}, Lcom/android/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "values":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "start":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 188
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 189
    .local v0, "end":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    .line 190
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 192
    :cond_0
    invoke-virtual {v7, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "value":Ljava/lang/String;
    sget-object v9, Lcom/android/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lcom/android/okio/ByteString;

    invoke-virtual {v3, v9}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 194
    move-object v5, v6

    .line 200
    :cond_1
    :goto_2
    add-int/lit8 v4, v0, 0x1

    .line 201
    goto :goto_1

    .line 195
    :cond_2
    sget-object v9, Lcom/android/okhttp/internal/spdy/Header;->VERSION:Lcom/android/okio/ByteString;

    invoke-virtual {v3, v9}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 196
    move-object v8, v6

    goto :goto_2

    .line 197
    :cond_3
    invoke-static {p1, v3}, Lcom/android/okhttp/internal/http/SpdyTransport;->isProhibitedHeader(Lcom/android/okhttp/Protocol;Lcom/android/okio/ByteString;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 198
    invoke-virtual {v3}, Lcom/android/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v6}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_2

    .line 184
    .end local v0    # "end":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "name":Lcom/android/okio/ByteString;
    .end local v4    # "start":I
    .end local v7    # "values":Ljava/lang/String;
    :cond_5
    if-nez v5, :cond_6

    new-instance v9, Ljava/net/ProtocolException;

    const-string v10, "Expected \':status\' header not present"

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 204
    :cond_6
    if-nez v8, :cond_7

    new-instance v9, Ljava/net/ProtocolException;

    const-string v10, "Expected \':version\' header not present"

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 206
    :cond_7
    new-instance v9, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v9}, Lcom/android/okhttp/Response$Builder;-><init>()V

    new-instance v10, Lcom/android/okhttp/internal/http/StatusLine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/okhttp/Response$Builder;->statusLine(Lcom/android/okhttp/internal/http/StatusLine;)Lcom/android/okhttp/Response$Builder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v9

    return-object v9
.end method

.method public static writeNameValueBlock(Lcom/android/okhttp/Request;Lcom/android/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            "Lcom/android/okhttp/Protocol;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 121
    .local v1, "headers":Lcom/android/okhttp/Headers;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0xa

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    new-instance v9, Lcom/android/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->TARGET_METHOD:Lcom/android/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v9, Lcom/android/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->TARGET_PATH:Lcom/android/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v11

    invoke-static {v11}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v9

    invoke-static {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->hostHeader(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "host":Ljava/lang/String;
    sget-object v9, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    if-ne v9, p1, :cond_1

    .line 126
    new-instance v9, Lcom/android/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->VERSION:Lcom/android/okio/ByteString;

    invoke-direct {v9, v10, p2}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v9, Lcom/android/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->TARGET_HOST:Lcom/android/okio/ByteString;

    invoke-direct {v9, v10, v2}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_0
    new-instance v9, Lcom/android/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lcom/android/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 136
    .local v6, "names":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/okio/ByteString;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 138
    invoke-virtual {v1, v3}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v5

    .line 139
    .local v5, "name":Lcom/android/okio/ByteString;
    invoke-virtual {v1, v3}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "value":Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/android/okhttp/internal/http/SpdyTransport;->isProhibitedHeader(Lcom/android/okhttp/Protocol;Lcom/android/okio/ByteString;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 136
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    .end local v3    # "i":I
    .end local v5    # "name":Lcom/android/okio/ByteString;
    .end local v6    # "names":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/okio/ByteString;>;"
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    sget-object v9, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v9, p1, :cond_2

    .line 129
    new-instance v9, Lcom/android/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lcom/android/okio/ByteString;

    invoke-direct {v9, v10, v2}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_2
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 145
    .restart local v3    # "i":I
    .restart local v5    # "name":Lcom/android/okio/ByteString;
    .restart local v6    # "names":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/okio/ByteString;>;"
    .restart local v8    # "value":Ljava/lang/String;
    :cond_3
    sget-object v9, Lcom/android/okhttp/internal/spdy/Header;->TARGET_METHOD:Lcom/android/okio/ByteString;

    invoke-virtual {v5, v9}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/okhttp/internal/spdy/Header;->TARGET_PATH:Lcom/android/okio/ByteString;

    invoke-virtual {v5, v9}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lcom/android/okio/ByteString;

    invoke-virtual {v5, v9}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lcom/android/okio/ByteString;

    invoke-virtual {v5, v9}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/okhttp/internal/spdy/Header;->TARGET_HOST:Lcom/android/okio/ByteString;

    invoke-virtual {v5, v9}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/okhttp/internal/spdy/Header;->VERSION:Lcom/android/okio/ByteString;

    invoke-virtual {v5, v9}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 155
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 156
    new-instance v9, Lcom/android/okhttp/internal/spdy/Header;

    invoke-direct {v9, v5, v8}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 162
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/okhttp/internal/spdy/Header;

    iget-object v9, v9, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okio/ByteString;

    invoke-virtual {v9, v5}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 163
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/okhttp/internal/spdy/Header;

    iget-object v9, v9, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okio/ByteString;

    invoke-virtual {v9}, Lcom/android/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/okhttp/internal/http/SpdyTransport;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "concatenated":Ljava/lang/String;
    new-instance v9, Lcom/android/okhttp/internal/spdy/Header;

    invoke-direct {v9, v5, v0}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 161
    .end local v0    # "concatenated":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 169
    .end local v4    # "j":I
    .end local v5    # "name":Lcom/android/okio/ByteString;
    .end local v8    # "value":Ljava/lang/String;
    :cond_6
    return-object v7
.end method


# virtual methods
.method public canReuseConnection()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public createRequestBody(Lcom/android/okhttp/Request;)Lcom/android/okio/Sink;
    .locals 1
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/http/SpdyTransport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 84
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getSink()Lcom/android/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lcom/android/okhttp/internal/http/HttpEngine;)V
    .locals 2
    .param p1, "engine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 224
    return-void
.end method

.method public emptyTransferStream()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getSink()Lcom/android/okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okio/Sink;->close()V

    .line 106
    return-void
.end method

.method public getTransferStream(Ljava/net/CacheRequest;)Lcom/android/okio/Source;
    .locals 2
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-direct {v0, v1, p1}, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;-><init>(Lcom/android/okhttp/internal/spdy/SpdyStream;Ljava/net/CacheRequest;)V

    return-object v0
.end method

.method public readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/SpdyTransport;->readNameValueBlock(Ljava/util/List;Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnectionOnIdle()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public writeRequestHeaders(Lcom/android/okhttp/Request;)V
    .locals 6
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    if-eqz v3, :cond_0

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 91
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    .line 92
    .local v0, "hasRequestBody":Z
    const/4 v1, 0x1

    .line 93
    .local v1, "hasResponseBody":Z
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Connection;->getHttpMinorVersion()I

    move-result v3

    invoke-static {v3}, Lcom/android/okhttp/internal/http/RequestLine;->version(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lcom/android/okhttp/internal/http/SpdyTransport;->writeNameValueBlock(Lcom/android/okhttp/Request;Lcom/android/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->newStream(Ljava/util/List;ZZ)Lcom/android/okhttp/internal/spdy/SpdyStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    .line 97
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/internal/spdy/SpdyStream;->setReadTimeout(J)V

    goto :goto_0
.end method
