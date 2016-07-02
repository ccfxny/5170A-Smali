.class public Lorg/apache/xalan/templates/ElemApplyTemplates;
.super Lorg/apache/xalan/templates/ElemCallTemplate;
.source "ElemApplyTemplates.java"


# static fields
.field static final serialVersionUID:J = 0x2849f924dd38cb4cL


# instance fields
.field private m_isDefaultTemplate:Z

.field private m_mode:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemCallTemplate;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 129
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    .line 154
    const/4 v1, 0x0

    .line 162
    .local v1, "pushMode":Z
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v0

    .line 164
    .local v0, "mode":Lorg/apache/xml/utils/QName;
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    if-nez v2, :cond_2

    .line 166
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 169
    :cond_1
    const/4 v1, 0x1

    .line 171
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushMode(Lorg/apache/xml/utils/QName;)V

    .line 175
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v1, :cond_3

    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    .line 182
    :cond_3
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    .line 184
    return-void

    .line 179
    .end local v0    # "mode":Lorg/apache/xml/utils/QName;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    .line 182
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    throw v2
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "apply-templates"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x32

    return v0
.end method

.method public setIsDefaultTemplate(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    .line 107
    return-void
.end method

.method public setMode(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "mode"    # Lorg/apache/xml/utils/QName;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    .line 69
    return-void
.end method

.method public transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 35
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    .line 200
    .local v4, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v27

    .line 201
    .local v27, "sourceNode":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_selectExpression:Lorg/apache/xpath/Expression;

    move/from16 v0, v27

    invoke-virtual {v8, v4, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v28

    .line 202
    .local v28, "sourceNodes":Lorg/apache/xml/dtm/DTMIterator;
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v33

    .line 203
    .local v33, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemApplyTemplates;->getParamElemCount()I

    move-result v20

    .line 204
    .local v20, "nParams":I
    invoke-virtual/range {v33 .. v33}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v32

    .line 206
    .local v32, "thisframe":I
    const/16 v24, 0x0

    .line 211
    .local v24, "pushContextNodeListFlag":Z
    const/4 v8, -0x1

    :try_start_0
    invoke-virtual {v4, v8}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 212
    const/4 v8, -0x1

    invoke-virtual {v4, v8}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    .line 213
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    .line 214
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_sortElems:Ljava/util/Vector;

    if-nez v8, :cond_1

    const/16 v19, 0x0

    .line 220
    .local v19, "keys":Ljava/util/Vector;
    :goto_0
    if-eqz v19, :cond_0

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/xalan/templates/ElemApplyTemplates;->sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v28

    .line 223
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v25

    .line 225
    .local v25, "rth":Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v29

    .line 226
    .local v29, "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateListComposed()Lorg/apache/xalan/templates/TemplateList;

    move-result-object v3

    .line 227
    .local v3, "tl":Lorg/apache/xalan/templates/TemplateList;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getQuietConflictWarnings()Z

    move-result v9

    .line 230
    .local v9, "quiet":Z
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v10

    .line 232
    .local v10, "dtm":Lorg/apache/xml/dtm/DTM;
    const/4 v11, -0x1

    .line 233
    .local v11, "argsFrame":I
    if-lez v20, :cond_3

    .line 238
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v11

    .line 239
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 241
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 243
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v17, v8, v18

    .line 244
    .local v17, "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemWithParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v22

    .line 246
    .local v22, "obj":Lorg/apache/xpath/objects/XObject;
    move-object/from16 v0, v33

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    .line 241
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 215
    .end local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .end local v9    # "quiet":Z
    .end local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v11    # "argsFrame":I
    .end local v17    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    .end local v18    # "i":I
    .end local v19    # "keys":Ljava/util/Vector;
    .end local v22    # "obj":Lorg/apache/xpath/objects/XObject;
    .end local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;

    move-result-object v19

    goto :goto_0

    .line 248
    .restart local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .restart local v9    # "quiet":Z
    .restart local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v11    # "argsFrame":I
    .restart local v18    # "i":I
    .restart local v19    # "keys":Ljava/util/Vector;
    .restart local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    :cond_2
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 251
    .end local v18    # "i":I
    :cond_3
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 252
    const/16 v24, 0x1

    .line 254
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v14

    .line 256
    .local v14, "currentNodes":Lorg/apache/xml/utils/IntStack;
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v12

    .line 261
    .local v12, "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    :goto_2
    const/4 v8, -0x1

    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v5

    .local v5, "child":I
    if-eq v8, v5, :cond_11

    .line 263
    invoke-virtual {v14, v5}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    .line 264
    invoke-virtual {v12, v5}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    .line 266
    invoke-virtual {v4, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v8

    if-eq v8, v10, :cond_4

    .line 268
    invoke-virtual {v4, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v10

    .line 271
    :cond_4
    invoke-interface {v10, v5}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(I)I

    move-result v6

    .line 273
    .local v6, "exNodeType":I
    invoke-interface {v10, v5}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v21

    .line 275
    .local v21, "nodeType":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v7

    .line 277
    .local v7, "mode":Lorg/apache/xml/utils/QName;
    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v10}, Lorg/apache/xalan/templates/TemplateList;->getTemplateFast(Lorg/apache/xpath/XPathContext;IILorg/apache/xml/utils/QName;IZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v31

    .line 282
    .local v31, "template":Lorg/apache/xalan/templates/ElemTemplate;
    if-nez v31, :cond_9

    .line 284
    packed-switch v21, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 288
    :pswitch_1
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v31

    .line 316
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    .line 319
    move-object/from16 v0, v31

    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    if-lez v8, :cond_d

    .line 321
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->pushRTFContext()V

    .line 322
    invoke-virtual/range {v33 .. v33}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v13

    .line 323
    .local v13, "currentFrameBottom":I
    move-object/from16 v0, v31

    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Lorg/apache/xpath/VariableStack;->link(I)I

    .line 326
    move-object/from16 v0, v31

    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    if-lez v8, :cond_e

    .line 328
    const/16 v23, 0x0

    .line 329
    .local v23, "paramIndex":I
    invoke-virtual/range {v31 .. v31}, Lorg/apache/xalan/templates/ElemTemplate;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v15

    .line 330
    .local v15, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_4
    if-eqz v15, :cond_e

    .line 332
    const/16 v8, 0x29

    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v34

    move/from16 v0, v34

    if-ne v8, v0, :cond_e

    .line 334
    move-object v0, v15

    check-cast v0, Lorg/apache/xalan/templates/ElemParam;

    move-object/from16 v16, v0

    .line 337
    .local v16, "ep":Lorg/apache/xalan/templates/ElemParam;
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 339
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v17, v8, v18

    .line 340
    .restart local v17    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    move-object/from16 v0, v17

    iget v8, v0, Lorg/apache/xalan/templates/ElemWithParam;->m_qnameID:I

    move-object/from16 v0, v16

    iget v0, v0, Lorg/apache/xalan/templates/ElemParam;->m_qnameID:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ne v8, v0, :cond_c

    .line 342
    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lorg/apache/xpath/VariableStack;->getLocalVariable(II)Lorg/apache/xpath/objects/XObject;

    move-result-object v22

    .line 343
    .restart local v22    # "obj":Lorg/apache/xpath/objects/XObject;
    move-object/from16 v0, v33

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    .line 347
    .end local v17    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    .end local v22    # "obj":Lorg/apache/xpath/objects/XObject;
    :cond_5
    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 348
    const/4 v8, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    .line 352
    :cond_6
    add-int/lit8 v23, v23, 0x1

    .line 330
    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v15

    goto :goto_4

    .line 296
    .end local v13    # "currentFrameBottom":I
    .end local v15    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v16    # "ep":Lorg/apache/xalan/templates/ElemParam;
    .end local v18    # "i":I
    .end local v23    # "paramIndex":I
    :pswitch_2
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    .line 297
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 299
    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-interface {v10, v5, v0, v8}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 300
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 403
    .end local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .end local v5    # "child":I
    .end local v6    # "exNodeType":I
    .end local v7    # "mode":Lorg/apache/xml/utils/QName;
    .end local v9    # "quiet":Z
    .end local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v11    # "argsFrame":I
    .end local v12    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .end local v14    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .end local v19    # "keys":Ljava/util/Vector;
    .end local v21    # "nodeType":I
    .end local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v31    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :catch_0
    move-exception v26

    .line 405
    .local v26, "se":Lorg/xml/sax/SAXException;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v8

    new-instance v34, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    if-lez v20, :cond_7

    .line 411
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 412
    :cond_7
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    if-eqz v24, :cond_8

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 419
    .end local v26    # "se":Lorg/xml/sax/SAXException;
    :goto_6
    return-void

    .line 303
    .restart local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .restart local v5    # "child":I
    .restart local v6    # "exNodeType":I
    .restart local v7    # "mode":Lorg/apache/xml/utils/QName;
    .restart local v9    # "quiet":Z
    .restart local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v11    # "argsFrame":I
    .restart local v12    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v14    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v19    # "keys":Ljava/util/Vector;
    .restart local v21    # "nodeType":I
    .restart local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    .restart local v31    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :pswitch_3
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v31

    .line 304
    goto/16 :goto_3

    .line 313
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 410
    .end local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .end local v5    # "child":I
    .end local v6    # "exNodeType":I
    .end local v7    # "mode":Lorg/apache/xml/utils/QName;
    .end local v9    # "quiet":Z
    .end local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v11    # "argsFrame":I
    .end local v12    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .end local v14    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .end local v19    # "keys":Ljava/util/Vector;
    .end local v21    # "nodeType":I
    .end local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .end local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v31    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :catchall_0
    move-exception v8

    if-lez v20, :cond_a

    .line 411
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 412
    :cond_a
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    if-eqz v24, :cond_b

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    throw v8

    .line 337
    .restart local v3    # "tl":Lorg/apache/xalan/templates/TemplateList;
    .restart local v5    # "child":I
    .restart local v6    # "exNodeType":I
    .restart local v7    # "mode":Lorg/apache/xml/utils/QName;
    .restart local v9    # "quiet":Z
    .restart local v10    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v11    # "argsFrame":I
    .restart local v12    # "currentExpressionNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v13    # "currentFrameBottom":I
    .restart local v14    # "currentNodes":Lorg/apache/xml/utils/IntStack;
    .restart local v15    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v16    # "ep":Lorg/apache/xalan/templates/ElemParam;
    .restart local v17    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    .restart local v18    # "i":I
    .restart local v19    # "keys":Ljava/util/Vector;
    .restart local v21    # "nodeType":I
    .restart local v23    # "paramIndex":I
    .restart local v25    # "rth":Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v29    # "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    .restart local v31    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 358
    .end local v13    # "currentFrameBottom":I
    .end local v15    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v16    # "ep":Lorg/apache/xalan/templates/ElemParam;
    .end local v17    # "ewp":Lorg/apache/xalan/templates/ElemWithParam;
    .end local v18    # "i":I
    .end local v23    # "paramIndex":I
    :cond_d
    const/4 v13, 0x0

    .line 363
    .restart local v13    # "currentFrameBottom":I
    :cond_e
    :try_start_3
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v30, v0

    .line 364
    .local v30, "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_7
    if-eqz v30, :cond_f

    .line 366
    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    :try_start_4
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 370
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 374
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 364
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v30, v0

    goto :goto_7

    .line 374
    :catchall_1
    move-exception v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v8

    .line 378
    :cond_f
    move-object/from16 v0, v31

    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    if-lez v8, :cond_10

    .line 395
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 396
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popRTFContext()V

    .line 399
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 410
    .end local v6    # "exNodeType":I
    .end local v7    # "mode":Lorg/apache/xml/utils/QName;
    .end local v13    # "currentFrameBottom":I
    .end local v21    # "nodeType":I
    .end local v30    # "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v31    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_11
    if-lez v20, :cond_12

    .line 411
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 412
    :cond_12
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    if-eqz v24, :cond_13

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    goto/16 :goto_6

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
