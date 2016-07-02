.class public Lorg/apache/http/conn/params/ConnRouteParams;
.super Ljava/lang/Object;
.source "ConnRouteParams.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnRoutePNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NO_HOST:Lorg/apache/http/HttpHost;

.field public static final NO_ROUTE:Lorg/apache/http/conn/routing/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "127.0.0.255"

    const/4 v2, 0x0

    const-string v3, "no-host"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    .line 72
    new-instance v0, Lorg/apache/http/conn/routing/HttpRoute;

    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;)V

    sput-object v0, Lorg/apache/http/conn/params/ConnRouteParams;->NO_ROUTE:Lorg/apache/http/conn/routing/HttpRoute;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static getDefaultProxy(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/HttpHost;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameters must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    const-string v1, "http.route.default-proxy"

    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 98
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    invoke-virtual {v1, v0}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const/4 v0, 0x0

    .line 102
    :cond_1
    return-object v0
.end method

.method public static getForcedRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameters must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    const-string v1, "http.route.forced-route"

    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/routing/HttpRoute;

    .line 142
    .local v0, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_ROUTE:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 146
    :cond_1
    return-object v0
.end method

.method public static getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameters must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    const-string v1, "http.route.local-address"

    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 188
    .local v0, "local":Ljava/net/InetAddress;
    return-object v0
.end method

.method public static setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 122
    return-void
.end method

.method public static setForcedRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    const-string v0, "http.route.forced-route"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 166
    return-void
.end method

.method public static setLocalAddress(Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "local"    # Ljava/net/InetAddress;

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 205
    return-void
.end method
