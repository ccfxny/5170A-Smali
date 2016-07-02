.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FollowingIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1053
    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1116
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_currentNode:I

    .line 1119
    .local v1, "node":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v0

    .line 1123
    .local v0, "current":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1125
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v2

    .line 1126
    .local v2, "type":I
    if-ne v4, v2, :cond_1

    .line 1127
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_currentNode:I

    .line 1128
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->returnNode(I)I

    move-result v3

    .line 1135
    :goto_0
    return v3

    .line 1131
    :cond_1
    const/4 v3, 0x2

    if-eq v3, v2, :cond_0

    const/16 v3, 0xd

    if-eq v3, v2, :cond_0

    .line 1134
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v3

    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_currentNode:I

    .line 1135
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->returnNode(I)I

    move-result v3

    goto :goto_0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 4
    .param p1, "node"    # I

    .prologue
    const/4 v3, -0x1

    .line 1066
    if-nez p1, :cond_0

    .line 1067
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    move-result p1

    .line 1068
    :cond_0
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_isRestartable:Z

    if-eqz v2, :cond_2

    .line 1070
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_startNode:I

    .line 1074
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result p1

    .line 1077
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    .line 1079
    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v2, v1, :cond_1

    const/16 v2, 0xd

    if-ne v2, v1, :cond_3

    .line 1081
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result p1

    .line 1082
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v0

    .line 1084
    .local v0, "first":I
    if-eq v3, v0, :cond_3

    .line 1085
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v2

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_currentNode:I

    .line 1086
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 1105
    .end local v0    # "first":I
    .end local v1    # "type":I
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;
    :cond_2
    :goto_0
    return-object p0

    .line 1092
    .restart local v1    # "type":I
    .restart local p0    # "this":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;
    :cond_3
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    .line 1094
    .restart local v0    # "first":I
    if-ne v3, v0, :cond_4

    .line 1095
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result p1

    .line 1097
    :cond_4
    if-ne v3, v0, :cond_5

    if-ne v3, p1, :cond_3

    .line 1099
    :cond_5
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v2

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_currentNode:I

    .line 1102
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    goto :goto_0
.end method
