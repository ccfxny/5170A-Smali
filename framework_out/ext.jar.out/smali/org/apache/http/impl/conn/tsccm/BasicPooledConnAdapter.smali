.class public Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;
.source "BasicPooledConnAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 0
    .param p1, "tsccm"    # Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .param p2, "entry"    # Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 61
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->markReusable()V

    .line 62
    return-void
.end method


# virtual methods
.method protected detach()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 87
    return-void
.end method

.method protected getManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method protected getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    return-object v0
.end method
