.class public Lorg/apache/xalan/templates/StylesheetComposed;
.super Lorg/apache/xalan/templates/Stylesheet;
.source "StylesheetComposed.java"


# static fields
.field static final serialVersionUID:J = -0x2fcbcd7627ab1243L


# instance fields
.field private m_endImportCountComposed:I

.field private m_importCountComposed:I

.field private m_importNumber:I

.field private transient m_includesComposed:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/xalan/templates/Stylesheet;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/Stylesheet;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    .line 57
    return-void
.end method


# virtual methods
.method public getEndImportCountComposed()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    return v0
.end method

.method public getImportComposed(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    .line 234
    .local v0, "root":Lorg/apache/xalan/templates/StylesheetRoot;
    iget v1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v1

    return-object v1
.end method

.method public getImportCountComposed()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importCountComposed:I

    return v0
.end method

.method public getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 311
    .end local p0    # "this":Lorg/apache/xalan/templates/StylesheetComposed;
    :goto_0
    return-object p0

    .line 308
    .restart local p0    # "this":Lorg/apache/xalan/templates/StylesheetComposed;
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 311
    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    move-object p0, v0

    goto :goto_0
.end method

.method public getIncludeCountComposed()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAggregatedType()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public recompose(Ljava/util/Vector;)V
    .locals 6
    .param p1, "recomposableElements"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v3

    .line 87
    .local v3, "n":I
    const/4 v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_9

    .line 89
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    .line 93
    .local v1, "included":Lorg/apache/xalan/templates/Stylesheet;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getOutputCount()I

    move-result v4

    .line 94
    .local v4, "s":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 96
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getOutput(I)Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSetCount()I

    move-result v4

    .line 102
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_1

    .line 104
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 109
    :cond_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v4

    .line 110
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_2

    .line 112
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 117
    :cond_2
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getKeyCount()I

    move-result v4

    .line 118
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_3

    .line 120
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 125
    :cond_3
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAliasCount()I

    move-result v4

    .line 126
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_4

    .line 128
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 133
    :cond_4
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getTemplateCount()I

    move-result v4

    .line 134
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_5

    .line 136
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 141
    :cond_5
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v4

    .line 142
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_6

    .line 144
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 149
    :cond_6
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpaceCount()I

    move-result v4

    .line 150
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_7

    .line 152
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 155
    :cond_7
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpaceCount()I

    move-result v4

    .line 156
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v4, :cond_8

    .line 158
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 87
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 161
    .end local v1    # "included":Lorg/apache/xalan/templates/Stylesheet;
    .end local v2    # "j":I
    .end local v4    # "s":I
    :cond_9
    return-void
.end method

.method recomposeImports()V
    .locals 6

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getImportNumber(Lorg/apache/xalan/templates/StylesheetComposed;)I

    move-result v4

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    .line 187
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v3

    .line 188
    .local v3, "root":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v1

    .line 190
    .local v1, "globalImportCount":I
    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    sub-int v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importCountComposed:I

    .line 193
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCount()I

    move-result v0

    .line 194
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 196
    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    .line 197
    :goto_0
    if-lez v0, :cond_0

    .line 198
    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v0

    .line 204
    :cond_1
    if-lez v0, :cond_2

    .line 206
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result v2

    .line 207
    .local v2, "imports":I
    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    .line 208
    :goto_1
    if-lez v2, :cond_1

    .line 209
    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    goto :goto_1

    .line 212
    .end local v2    # "imports":I
    :cond_2
    return-void
.end method

.method recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 4
    .param p1, "including"    # Lorg/apache/xalan/templates/Stylesheet;

    .prologue
    .line 275
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    move-result v2

    .line 277
    .local v2, "n":I
    if-lez v2, :cond_1

    .line 279
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-nez v3, :cond_0

    .line 280
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    .line 282
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 284
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    .line 285
    .local v1, "included":Lorg/apache/xalan/templates/Stylesheet;
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "i":I
    .end local v1    # "included":Lorg/apache/xalan/templates/Stylesheet;
    :cond_1
    return-void
.end method

.method public recomposeTemplates(Z)V
    .locals 0
    .param p1, "flushFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 348
    return-void
.end method
