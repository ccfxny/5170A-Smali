.class public Lorg/apache/xalan/transformer/NodeSorter;
.super Ljava/lang/Object;
.source "NodeSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    }
.end annotation


# instance fields
.field m_execContext:Lorg/apache/xpath/XPathContext;

.field m_keys:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/XPathContext;)V
    .locals 0
    .param p1, "p"    # Lorg/apache/xpath/XPathContext;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    .line 62
    return-void
.end method


# virtual methods
.method compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I
    .locals 25
    .param p1, "n1"    # Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    .param p2, "n2"    # Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    .param p3, "kIndex"    # I
    .param p4, "support"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 131
    const/16 v18, 0x0

    .line 132
    .local v18, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xalan/transformer/NodeSortKey;

    .line 134
    .local v9, "k":Lorg/apache/xalan/transformer/NodeSortKey;
    iget-boolean v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 138
    if-nez p3, :cond_3

    .line 140
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Double;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 141
    .local v10, "n1Num":D
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Double;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 172
    .local v14, "n2Num":D
    :goto_0
    cmpl-double v21, v10, v14

    if-nez v21, :cond_5

    add-int/lit8 v21, p3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 174
    add-int/lit8 v21, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v21

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v18

    .line 256
    .end local v10    # "n1Num":D
    .end local v14    # "n2Num":D
    :cond_0
    :goto_1
    if-nez v18, :cond_1

    .line 258
    add-int/lit8 v21, p3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 260
    add-int/lit8 v21, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v21

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v18

    .line 264
    :cond_1
    if-nez v18, :cond_2

    .line 271
    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v21, v0

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v8

    .line 272
    .local v8, "dtm":Lorg/apache/xml/dtm/DTM;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v8, v0, v1}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v21

    if-eqz v21, :cond_12

    const/16 v18, -0x1

    .line 277
    .end local v8    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_2
    :goto_2
    return v18

    .line 143
    :cond_3
    const/16 v21, 0x1

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 145
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Double;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 146
    .restart local v10    # "n1Num":D
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Double;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .restart local v14    # "n2Num":D
    goto/16 :goto_0

    .line 159
    .end local v10    # "n1Num":D
    .end local v14    # "n2Num":D
    :cond_4
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v23, v0

    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v16

    .line 161
    .local v16, "r1":Lorg/apache/xpath/objects/XObject;
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v23, v0

    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    .line 163
    .local v17, "r2":Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v10

    .line 168
    .restart local v10    # "n1Num":D
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v14

    .restart local v14    # "n2Num":D
    goto/16 :goto_0

    .line 179
    .end local v16    # "r1":Lorg/apache/xpath/objects/XObject;
    .end local v17    # "r2":Lorg/apache/xpath/objects/XObject;
    :cond_5
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 181
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 182
    const-wide/16 v6, 0x0

    .line 192
    .local v6, "diff":D
    :goto_3
    const-wide/16 v22, 0x0

    cmpg-double v21, v6, v22

    if-gez v21, :cond_a

    iget-boolean v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    const/16 v18, 0x1

    :goto_4
    goto/16 :goto_1

    .line 184
    .end local v6    # "diff":D
    :cond_6
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .restart local v6    # "diff":D
    goto :goto_3

    .line 186
    .end local v6    # "diff":D
    :cond_7
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 187
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .restart local v6    # "diff":D
    goto :goto_3

    .line 189
    .end local v6    # "diff":D
    :cond_8
    sub-double v6, v10, v14

    .restart local v6    # "diff":D
    goto :goto_3

    .line 192
    :cond_9
    const/16 v18, -0x1

    goto :goto_4

    :cond_a
    const-wide/16 v22, 0x0

    cmpl-double v21, v6, v22

    if-lez v21, :cond_c

    iget-boolean v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    const/16 v18, -0x1

    goto :goto_4

    :cond_b
    const/16 v18, 0x1

    goto :goto_4

    :cond_c
    const/16 v18, 0x0

    goto :goto_4

    .line 201
    .end local v6    # "diff":D
    .end local v10    # "n1Num":D
    .end local v14    # "n2Num":D
    :cond_d
    if-nez p3, :cond_f

    .line 203
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v12, Ljava/text/CollationKey;

    .line 204
    .local v12, "n1String":Ljava/text/CollationKey;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v13, Ljava/text/CollationKey;

    .line 233
    .local v13, "n2String":Ljava/text/CollationKey;
    :goto_5
    invoke-virtual {v12, v13}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v18

    .line 236
    iget-boolean v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_caseOrderUpper:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 238
    invoke-virtual {v12}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 239
    .local v19, "tempN1":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 241
    .local v20, "tempN2":Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 245
    if-nez v18, :cond_11

    const/16 v18, 0x0

    .line 250
    .end local v19    # "tempN1":Ljava/lang/String;
    .end local v20    # "tempN2":Ljava/lang/String;
    :cond_e
    :goto_6
    iget-boolean v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 252
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_1

    .line 206
    .end local v12    # "n1String":Ljava/text/CollationKey;
    .end local v13    # "n2String":Ljava/text/CollationKey;
    :cond_f
    const/16 v21, 0x1

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 208
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v12, Ljava/text/CollationKey;

    .line 209
    .restart local v12    # "n1String":Ljava/text/CollationKey;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v13, Ljava/text/CollationKey;

    .restart local v13    # "n2String":Ljava/text/CollationKey;
    goto :goto_5

    .line 222
    .end local v12    # "n1String":Ljava/text/CollationKey;
    .end local v13    # "n2String":Ljava/text/CollationKey;
    :cond_10
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v23, v0

    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v16

    .line 224
    .restart local v16    # "r1":Lorg/apache/xpath/objects/XObject;
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v23, v0

    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    .line 227
    .restart local v17    # "r2":Lorg/apache/xpath/objects/XObject;
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    move-object/from16 v21, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v12

    .line 228
    .restart local v12    # "n1String":Ljava/text/CollationKey;
    iget-object v0, v9, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v13

    .restart local v13    # "n2String":Ljava/text/CollationKey;
    goto/16 :goto_5

    .line 245
    .end local v16    # "r1":Lorg/apache/xpath/objects/XObject;
    .end local v17    # "r2":Lorg/apache/xpath/objects/XObject;
    .restart local v19    # "tempN1":Ljava/lang/String;
    .restart local v20    # "tempN2":Ljava/lang/String;
    :cond_11
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    goto :goto_6

    .line 272
    .end local v12    # "n1String":Ljava/text/CollationKey;
    .end local v13    # "n2String":Ljava/text/CollationKey;
    .end local v19    # "tempN1":Ljava/lang/String;
    .end local v20    # "tempN2":Ljava/lang/String;
    .restart local v8    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_12
    const/16 v18, 0x1

    goto/16 :goto_2
.end method

.method mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V
    .locals 17
    .param p1, "a"    # Ljava/util/Vector;
    .param p2, "b"    # Ljava/util/Vector;
    .param p3, "l"    # I
    .param p4, "r"    # I
    .param p5, "support"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 299
    sub-int v2, p4, p3

    if-lez v2, :cond_7

    .line 301
    add-int v2, p4, p3

    div-int/lit8 v6, v2, 0x2

    .local v6, "m":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    .line 303
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    .line 304
    add-int/lit8 v10, v6, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    .line 308
    move v14, v6

    .local v14, "i":I
    :goto_0
    move/from16 v0, p3

    if-lt v14, v0, :cond_1

    .line 313
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v14, v2, :cond_0

    .line 314
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 308
    :goto_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 316
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 319
    :cond_1
    move/from16 v14, p3

    .line 321
    add-int/lit8 v15, v6, 0x1

    .local v15, "j":I
    :goto_2
    move/from16 v0, p4

    if-gt v15, v0, :cond_3

    .line 325
    add-int v2, p4, v6

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v15

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 326
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    add-int v3, p4, v6

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v3, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 321
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 328
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    add-int v3, p4, v6

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v3, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_3

    .line 331
    :cond_3
    move/from16 v15, p4

    .line 335
    move/from16 v16, p3

    .local v16, "k":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, p4

    if-gt v0, v1, :cond_7

    .line 339
    if-ne v14, v15, :cond_5

    .line 340
    const/4 v13, -0x1

    .line 345
    .local v13, "compVal":I
    :goto_5
    if-gez v13, :cond_6

    .line 349
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 351
    add-int/lit8 v14, v14, 0x1

    .line 335
    :cond_4
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 342
    .end local v13    # "compVal":I
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v13

    .restart local v13    # "compVal":I
    goto :goto_5

    .line 353
    :cond_6
    if-lez v13, :cond_4

    .line 357
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 359
    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    .line 363
    .end local v6    # "m":I
    .end local v13    # "compVal":I
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v16    # "k":I
    :cond_7
    return-void
.end method

.method public sort(Lorg/apache/xml/dtm/DTMIterator;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V
    .locals 9
    .param p1, "v"    # Lorg/apache/xml/dtm/DTMIterator;
    .param p2, "keys"    # Ljava/util/Vector;
    .param p3, "support"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 77
    iput-object p2, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    .line 80
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v8

    .line 88
    .local v8, "n":I
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 90
    .local v1, "nodes":Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 92
    new-instance v6, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    invoke-interface {p1, v7}, Lorg/apache/xml/dtm/DTMIterator;->item(I)I

    move-result v0

    invoke-direct {v6, p0, v0}, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;-><init>(Lorg/apache/xalan/transformer/NodeSorter;I)V

    .line 94
    .local v6, "elem":Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 97
    .end local v6    # "elem":Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 99
    .local v2, "scratchVector":Ljava/util/Vector;
    add-int/lit8 v4, v8, -0x1

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    .line 102
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    .line 104
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    invoke-interface {p1, v0, v7}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 106
    :cond_1
    invoke-interface {p1, v3}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V

    .line 111
    return-void
.end method
