.class public abstract Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected volatile poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;


# direct methods
.method protected constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 1
    .param p1, "manager"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "entry"    # Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .prologue
    .line 82
    iget-object v0, p2, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 83
    iput-object p2, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 84
    return-void
.end method


# virtual methods
.method protected final assertAttached()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter is detached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 162
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->close()V

    .line 165
    :cond_1
    return-void
.end method

.method protected detach()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->detach()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 107
    return-void
.end method

.method public getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 114
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    iget-object v0, v0, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    iget-object v0, v0, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 182
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 151
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 152
    return-void
.end method

.method public open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 124
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 125
    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 189
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->setState(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 173
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V

    .line 176
    :cond_1
    return-void
.end method

.method public tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "next"    # Lorg/apache/http/HttpHost;
    .param p2, "secure"    # Z
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 142
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 143
    return-void
.end method

.method public tunnelTarget(ZLorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "secure"    # Z
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    .line 133
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    .line 134
    return-void
.end method
