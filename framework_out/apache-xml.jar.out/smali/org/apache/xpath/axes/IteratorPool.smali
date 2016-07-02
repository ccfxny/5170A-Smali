.class public final Lorg/apache/xpath/axes/IteratorPool;
.super Ljava/lang/Object;
.source "IteratorPool.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x6658af730705416L


# instance fields
.field private final m_freeStack:Ljava/util/ArrayList;

.field private final m_orig:Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 1
    .param p1, "original"    # Lorg/apache/xml/dtm/DTMIterator;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized freeInstance(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 1
    .param p1, "obj"    # Lorg/apache/xml/dtm/DTMIterator;

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInstance()Lorg/apache/xml/dtm/DTMIterator;
    .locals 4

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    :try_start_1
    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    monitor-exit p0

    return-object v2

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v2, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 104
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v1, "result":Lorg/apache/xml/dtm/DTMIterator;
    move-object v2, v1

    .line 105
    goto :goto_0
.end method

.method public declared-synchronized getInstanceOrThrow()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-object v1

    .line 75
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "result":Lorg/apache/xml/dtm/DTMIterator;
    move-object v1, v0

    .line 76
    goto :goto_0

    .line 66
    .end local v0    # "result":Lorg/apache/xml/dtm/DTMIterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
