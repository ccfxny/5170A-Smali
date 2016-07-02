.class public Lorg/apache/xpath/compiler/OpMap;
.super Ljava/lang/Object;
.source "OpMap.java"


# static fields
.field static final BLOCKTOKENQUEUESIZE:I = 0x1f4

.field public static final MAPINDEX_LENGTH:I = 0x1

.field static final MAXTOKENQUEUESIZE:I = 0x1f4


# instance fields
.field protected m_currentPattern:Ljava/lang/String;

.field m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

.field m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1f4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lorg/apache/xml/utils/ObjectVector;

    invoke-direct {v0, v1, v1}, Lorg/apache/xml/utils/ObjectVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    return-void
.end method

.method public static getFirstChildPos(I)I
    .locals 1
    .param p0, "opPos"    # I

    .prologue
    .line 333
    add-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static getFirstChildPosOfStep(I)I
    .locals 1
    .param p0, "opPos"    # I

    .prologue
    .line 369
    add-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static getNextOpPos([II)I
    .locals 1
    .param p0, "opMap"    # [I
    .param p1, "opPos"    # I

    .prologue
    .line 258
    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getArgLength(I)I
    .locals 2
    .param p1, "opPos"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public getArgLengthOfStep(I)I
    .locals 2
    .param p1, "opPos"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method public getFirstPredicateOpPos(I)I
    .locals 5
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x2

    .line 277
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {v2, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    .line 279
    .local v0, "stepType":I
    const/16 v2, 0x25

    if-lt v0, v2, :cond_1

    const/16 v2, 0x35

    if-gt v0, v2, :cond_1

    .line 282
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v1

    add-int/2addr v1, p1

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 284
    :cond_1
    const/16 v2, 0x16

    if-lt v0, v2, :cond_2

    const/16 v2, 0x19

    if-gt v0, v2, :cond_2

    .line 287
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_0

    .line 289
    :cond_2
    if-eq v1, v0, :cond_0

    .line 295
    const-string v1, "ER_UNKNOWN_OPCODE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getNextOpPos(I)I
    .locals 2
    .param p1, "opPos"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getNextStepPos(I)I
    .locals 7
    .param p1, "opPos"    # I

    .prologue
    const/16 v5, 0x35

    const/16 v4, 0x25

    .line 213
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 215
    .local v1, "stepType":I
    if-lt v1, v4, :cond_1

    if-gt v1, v5, :cond_1

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    const/16 v2, 0x16

    if-lt v1, v2, :cond_4

    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    .line 223
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    .line 225
    .local v0, "newOpPos":I
    :goto_1
    const/16 v2, 0x1d

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 227
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    .line 232
    if-lt v1, v4, :cond_3

    if-le v1, v5, :cond_0

    .line 235
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 242
    .end local v0    # "newOpPos":I
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_UNKNOWN_STEP"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOp(I)I
    .locals 1
    .param p1, "opPos"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public getOpMap()Lorg/apache/xpath/compiler/OpMapVector;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    return-object v0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getStepLocalName(I)Ljava/lang/String;
    .locals 4
    .param p1, "opPosOfStep"    # I

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    .line 426
    .local v0, "argLenOfStep":I
    packed-switch v0, :pswitch_data_0

    .line 441
    const/4 v1, -0x2

    .line 447
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 448
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    :goto_1
    return-object v2

    .line 429
    .end local v1    # "index":I
    :pswitch_0
    const/4 v1, -0x2

    .line 430
    .restart local v1    # "index":I
    goto :goto_0

    .line 432
    .end local v1    # "index":I
    :pswitch_1
    const/4 v1, -0x3

    .line 433
    .restart local v1    # "index":I
    goto :goto_0

    .line 435
    .end local v1    # "index":I
    :pswitch_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v1

    .line 436
    .restart local v1    # "index":I
    goto :goto_0

    .line 438
    .end local v1    # "index":I
    :pswitch_3
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v3, p1, 0x5

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v1

    .line 439
    .restart local v1    # "index":I
    goto :goto_0

    .line 449
    :cond_0
    const/4 v2, -0x3

    if-ne v2, v1, :cond_1

    .line 450
    const-string v2, "*"

    goto :goto_1

    .line 452
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getStepNS(I)Ljava/lang/String;
    .locals 5
    .param p1, "opPosOfStep"    # I

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    .line 397
    .local v0, "argLenOfStep":I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 399
    iget-object v3, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v4, p1, 0x4

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v1

    .line 401
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 402
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 409
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-object v2

    .line 403
    .restart local v1    # "index":I
    :cond_1
    const/4 v3, -0x3

    if-ne v3, v1, :cond_0

    .line 404
    const-string v2, "*"

    goto :goto_0
.end method

.method public getStepTestType(I)I
    .locals 2
    .param p1, "opPosOfStep"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public getToken(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTokenQueue()Lorg/apache/xml/utils/ObjectVector;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    return-object v0
.end method

.method public getTokenQueueSize()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectVector;->size()I

    move-result v0

    return v0
.end method

.method public setOp(II)V
    .locals 1
    .param p1, "opPos"    # I
    .param p2, "value"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {v0, p2, p1}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    .line 188
    return-void
.end method

.method shrink()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 152
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    .line 153
    .local v0, "n":I
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->setToSize(I)V

    .line 155
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {v1, v3, v0}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    .line 156
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    .line 157
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v3, v2}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    .line 160
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectVector;->size()I

    move-result v0

    .line 161
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/ObjectVector;->setToSize(I)V

    .line 163
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v1, v4, v0}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 164
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v4, v2}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 165
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v4, v2}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    return-object v0
.end method
