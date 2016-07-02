.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 0
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "source"    # Ljavax/xml/transform/Source;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z

    .prologue
    .line 56
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .locals 0
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "source"    # Ljavax/xml/transform/Source;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z
    .param p7, "blocksize"    # I
    .param p8, "usePrevsib"    # Z
    .param p9, "newNameTable"    # Z

    .prologue
    .line 84
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    .line 86
    return-void
.end method


# virtual methods
.method public getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 6
    .param p1, "axis"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    packed-switch p1, :pswitch_data_0

    .line 226
    :pswitch_0
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_ITERATOR_AXIS_NOT_IMPLEMENTED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :pswitch_1
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :goto_0
    move-object v1, v0

    .line 233
    :goto_1
    return-object v1

    .line 191
    :pswitch_2
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 192
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 194
    :pswitch_3
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_1

    .line 196
    :pswitch_4
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_1

    .line 198
    :pswitch_5
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    goto :goto_1

    .line 200
    :pswitch_6
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_1

    .line 202
    :pswitch_7
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 203
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 205
    :pswitch_8
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    .line 206
    goto :goto_0

    .line 208
    :pswitch_9
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 209
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 211
    :pswitch_a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 212
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 214
    :pswitch_b
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 215
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 217
    :pswitch_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 218
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 220
    :pswitch_d
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 221
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 223
    :pswitch_e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 224
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 6
    .param p1, "axis"    # I
    .param p2, "type"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 118
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    packed-switch p1, :pswitch_data_0

    .line 159
    :pswitch_0
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_TYPED_ITERATOR_AXIS_NOT_IMPLEMENTED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :pswitch_1
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :goto_0
    move-object v1, v0

    .line 167
    :goto_1
    return-object v1

    .line 124
    :pswitch_2
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 125
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 127
    :pswitch_3
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    goto :goto_1

    .line 129
    :pswitch_4
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_1

    .line 131
    :pswitch_5
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    goto :goto_1

    .line 133
    :pswitch_6
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_1

    .line 135
    :pswitch_7
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 136
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 138
    :pswitch_8
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    .line 139
    goto :goto_0

    .line 141
    :pswitch_9
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 142
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 144
    :pswitch_a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 145
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 147
    :pswitch_b
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 148
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 150
    :pswitch_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 151
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 153
    :pswitch_d
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 154
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 156
    :pswitch_e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;

    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 157
    .restart local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
