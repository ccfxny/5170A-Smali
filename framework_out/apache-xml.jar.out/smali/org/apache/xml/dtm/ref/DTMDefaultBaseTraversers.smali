.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBase;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;
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
    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 63
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
    .line 89
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    .line 91
    return-void
.end method


# virtual methods
.method public getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
    .locals 6
    .param p1, "axis"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    if-nez v2, :cond_1

    .line 108
    invoke-static {}, Lorg/apache/xml/dtm/Axis;->getNamesLength()I

    move-result v2

    new-array v2, v2, [Lorg/apache/xml/dtm/DTMAxisTraverser;

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 109
    const/4 v0, 0x0

    .line 119
    .local v0, "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 184
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_UNKNOWN_AXIS_TYPE"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    aget-object v0, v2, p1

    .line 115
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 194
    :goto_0
    :pswitch_0
    return-object v1

    .line 122
    :pswitch_1
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 187
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :goto_1
    if-nez v0, :cond_2

    .line 188
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_AXIS_TRAVERSER_NOT_SUPPORTED"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :pswitch_2
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 126
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 128
    :pswitch_3
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 129
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 131
    :pswitch_4
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 132
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 134
    :pswitch_5
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 135
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 137
    :pswitch_6
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 138
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 140
    :pswitch_7
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 141
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 143
    :pswitch_8
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 144
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 146
    :pswitch_9
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 147
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 149
    :pswitch_a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 150
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 152
    :pswitch_b
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 153
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 155
    :pswitch_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 156
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 158
    :pswitch_d
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 159
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 161
    :pswitch_e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 162
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 164
    :pswitch_f
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 165
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 167
    :pswitch_10
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 168
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 170
    :pswitch_11
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 171
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 173
    :pswitch_12
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 174
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_1

    .line 176
    :pswitch_13
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 177
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto/16 :goto_1

    .line 179
    :pswitch_14
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;

    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 180
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto/16 :goto_1

    .line 192
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    aput-object v0, v1, p1

    move-object v1, v0

    .line 194
    goto/16 :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
    .end packed-switch
.end method
