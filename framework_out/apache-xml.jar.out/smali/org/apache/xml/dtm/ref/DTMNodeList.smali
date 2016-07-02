.class public Lorg/apache/xml/dtm/ref/DTMNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMNodeList.java"


# instance fields
.field private m_iter:Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 4
    .param p1, "dtmIterator"    # Lorg/apache/xml/dtm/DTMIterator;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v1

    .line 76
    .local v1, "pos":I
    :try_start_0
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTMIterator;->setShouldCacheNodes(Z)V

    .line 81
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTMIterator;->runTo(I)V

    .line 82
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V

    .line 84
    .end local v1    # "pos":I
    :cond_0
    return-void

    .line 77
    .restart local v1    # "pos":I
    :catch_0
    move-exception v0

    .line 78
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    goto :goto_0
.end method


# virtual methods
.method public getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTMIterator;->item(I)I

    move-result v0

    .line 111
    .local v0, "handle":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 116
    .end local v0    # "handle":I
    :cond_0
    :goto_0
    return-object v1

    .line 114
    .restart local v0    # "handle":I
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeList;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method
