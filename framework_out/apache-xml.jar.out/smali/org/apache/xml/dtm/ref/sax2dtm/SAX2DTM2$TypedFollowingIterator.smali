.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedFollowingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0
    .param p2, "type"    # I

    .prologue
    .line 1157
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    .line 1158
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_nodeType:I

    .line 1159
    return-void
.end method


# virtual methods
.method public next()I
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x2

    const/4 v5, -0x1

    .line 1172
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_nodeType:I

    .line 1173
    .local v3, "nodeType":I
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_currentNode:I

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    .line 1175
    .local v1, "currentNodeID":I
    const/16 v6, 0xe

    if-lt v3, v6, :cond_5

    .line 1177
    :cond_0
    move v2, v1

    .line 1178
    .local v2, "node":I
    move v0, v2

    .line 1181
    .local v0, "current":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1182
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v4

    .line 1184
    .local v4, "type":I
    if-eq v4, v5, :cond_2

    if-eq v8, v4, :cond_1

    if-eq v9, v4, :cond_1

    .line 1186
    :cond_2
    if-eq v4, v5, :cond_4

    move v1, v0

    .line 1188
    :goto_0
    if-eq v2, v5, :cond_3

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 1207
    :cond_3
    :goto_1
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v6

    iput v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_currentNode:I

    .line 1208
    if-ne v2, v5, :cond_9

    :goto_2
    return v5

    :cond_4
    move v1, v5

    .line 1186
    goto :goto_0

    .line 1192
    .end local v0    # "current":I
    .end local v2    # "node":I
    .end local v4    # "type":I
    :cond_5
    move v2, v1

    .line 1193
    .restart local v2    # "node":I
    move v0, v2

    .line 1196
    .restart local v0    # "current":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 1197
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v4

    .line 1199
    .restart local v4    # "type":I
    if-eq v4, v5, :cond_7

    if-eq v8, v4, :cond_6

    if-eq v9, v4, :cond_6

    .line 1201
    :cond_7
    if-eq v4, v5, :cond_8

    move v1, v0

    .line 1204
    :goto_3
    if-eq v2, v5, :cond_3

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v6

    if-eq v6, v3, :cond_3

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v6

    if-ne v6, v3, :cond_5

    goto :goto_1

    :cond_8
    move v1, v5

    .line 1201
    goto :goto_3

    .line 1208
    :cond_9
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->returnNode(I)I

    move-result v5

    goto :goto_2
.end method
