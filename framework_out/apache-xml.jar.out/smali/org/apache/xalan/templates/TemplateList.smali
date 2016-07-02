.class public Lorg/apache/xalan/templates/TemplateList;
.super Ljava/lang/Object;
.source "TemplateList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/TemplateList$1;,
        Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x508acbed134bd097L


# instance fields
.field private m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_namedTemplates:Ljava/util/Hashtable;

.field private m_patternTable:Ljava/util/Hashtable;

.field private m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x59

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    .line 777
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    .line 781
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 785
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 789
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 793
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/xalan/templates/TemplateList;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/xalan/templates/TemplateList;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-object v0
.end method

.method private addObjectIfNotFound(Ljava/lang/Object;Ljava/util/Vector;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/util/Vector;

    .prologue
    .line 742
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 743
    .local v2, "n":I
    const/4 v0, 0x1

    .line 745
    .local v0, "addIt":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 747
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 749
    const/4 v0, 0x0

    .line 755
    :cond_0
    if-eqz v0, :cond_1

    .line 757
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 759
    :cond_1
    return-void

    .line 745
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "head"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p3, "targetNode"    # I
    .param p4, "mode"    # Lorg/apache/xml/utils/QName;

    .prologue
    .line 731
    return-void
.end method

.method private getHead(Ljava/lang/String;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-object v0
.end method

.method private getNamedTemplates()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-object v0
.end method

.method private getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D
    .locals 6
    .param p1, "matchPat"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .prologue
    .line 392
    invoke-virtual {p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getPriority()D

    move-result-wide v2

    .line 394
    .local v2, "priority":D
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 396
    invoke-virtual {p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getStepPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    .line 398
    .local v0, "ex":Lorg/apache/xpath/Expression;
    instance-of v1, v0, Lorg/apache/xpath/patterns/NodeTest;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Lorg/apache/xpath/patterns/NodeTest;

    .end local v0    # "ex":Lorg/apache/xpath/Expression;
    invoke-virtual {v0}, Lorg/apache/xpath/patterns/NodeTest;->getDefaultScore()D

    move-result-wide v2

    .line 404
    .end local v2    # "priority":D
    :cond_0
    return-wide v2
.end method

.method private insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 11
    .param p1, "head"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .param p2, "item"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .param p3, "isWildCardInsert"    # Z

    .prologue
    .line 233
    invoke-direct {p0, p2}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v6

    .line 235
    .local v6, "priority":D
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v1

    .line 236
    .local v1, "importLevel":I
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v0

    .line 237
    .local v0, "docOrder":I
    move-object v3, p1

    .line 255
    .local v3, "insertPoint":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v5

    .line 256
    .local v5, "next":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    if-nez v5, :cond_2

    .line 276
    :cond_0
    if-eqz v5, :cond_1

    if-ne v3, p1, :cond_a

    .line 278
    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v8

    .line 279
    .local v8, "workPriority":D
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-le v1, v10, :cond_5

    .line 280
    const/4 v2, 0x1

    .line 297
    .end local v8    # "workPriority":D
    .local v2, "insertBefore":Z
    :goto_1
    if-eqz p3, :cond_c

    .line 299
    if-eqz v2, :cond_b

    .line 301
    invoke-virtual {p2, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 303
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setTargetString(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v4, p2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 332
    .end local v4    # "key":Ljava/lang/String;
    .end local p2    # "item":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_2
    return-object p2

    .line 260
    .end local v2    # "insertBefore":Z
    .restart local p2    # "item":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_2
    invoke-direct {p0, v5}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v8

    .line 261
    .restart local v8    # "workPriority":D
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-gt v1, v10, :cond_0

    .line 263
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-ge v1, v10, :cond_3

    .line 264
    move-object v3, v5

    goto :goto_0

    .line 265
    :cond_3
    cmpl-double v10, v6, v8

    if-gtz v10, :cond_0

    .line 267
    cmpg-double v10, v6, v8

    if-gez v10, :cond_4

    .line 268
    move-object v3, v5

    goto :goto_0

    .line 269
    :cond_4
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 272
    move-object v3, v5

    goto :goto_0

    .line 281
    :cond_5
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 282
    const/4 v2, 0x0

    .restart local v2    # "insertBefore":Z
    goto :goto_1

    .line 283
    .end local v2    # "insertBefore":Z
    :cond_6
    cmpl-double v10, v6, v8

    if-lez v10, :cond_7

    .line 284
    const/4 v2, 0x1

    .restart local v2    # "insertBefore":Z
    goto :goto_1

    .line 285
    .end local v2    # "insertBefore":Z
    :cond_7
    cmpg-double v10, v6, v8

    if-gez v10, :cond_8

    .line 286
    const/4 v2, 0x0

    .restart local v2    # "insertBefore":Z
    goto :goto_1

    .line 287
    .end local v2    # "insertBefore":Z
    :cond_8
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v10

    if-lt v0, v10, :cond_9

    .line 288
    const/4 v2, 0x1

    .restart local v2    # "insertBefore":Z
    goto :goto_1

    .line 290
    .end local v2    # "insertBefore":Z
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "insertBefore":Z
    goto :goto_1

    .line 293
    .end local v2    # "insertBefore":Z
    .end local v8    # "workPriority":D
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "insertBefore":Z
    goto :goto_1

    .line 311
    :cond_b
    invoke-virtual {p2, v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 312
    invoke-virtual {v3, p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    move-object p2, p1

    .line 313
    goto :goto_2

    .line 318
    :cond_c
    if-eqz v2, :cond_f

    .line 320
    invoke-virtual {p2, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 322
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 323
    :cond_d
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_2

    .line 325
    :cond_e
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, p2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    goto :goto_2

    .line 330
    :cond_f
    invoke-virtual {p2, v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 331
    invoke-virtual {v3, p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    move-object p2, p1

    .line 332
    goto :goto_2
.end method

.method private insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 6
    .param p1, "pattern"    # Lorg/apache/xpath/patterns/StepPattern;
    .param p2, "template"    # Lorg/apache/xalan/templates/ElemTemplate;

    .prologue
    .line 346
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getTargetString()Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "target":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 350
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplate;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "pstring":Ljava/lang/String;
    new-instance v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    invoke-direct {v0, p2, p1, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;-><init>(Lorg/apache/xalan/templates/ElemTemplate;Lorg/apache/xpath/patterns/StepPattern;Ljava/lang/String;)V

    .line 355
    .local v0, "association":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result v2

    .line 356
    .local v2, "isWildCard":Z
    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 360
    .local v1, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_0
    if-nez v1, :cond_3

    .line 362
    if-eqz v2, :cond_2

    .line 363
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 372
    .end local v0    # "association":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .end local v1    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .end local v2    # "isWildCard":Z
    .end local v3    # "pstring":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 356
    .restart local v0    # "association":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .restart local v2    # "isWildCard":Z
    .restart local v3    # "pstring":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v4}, Lorg/apache/xalan/templates/TemplateList;->getHead(Ljava/lang/String;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_0

    .line 365
    .restart local v1    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_2
    invoke-direct {p0, v4, v0}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    goto :goto_1

    .line 369
    :cond_3
    const/4 v5, 0x0

    invoke-direct {p0, v1, v0, v5}, Lorg/apache/xalan/templates/TemplateList;->insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_1
.end method

.method private putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "assoc"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .prologue
    .line 845
    const-string v0, "#text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 852
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    return-void

    .line 847
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 848
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    .line 849
    :cond_2
    const-string v0, "#comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0
.end method

.method private setNamedTemplates(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "v"    # Ljava/util/Hashtable;

    .prologue
    .line 820
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    .line 821
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 5
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;

    .prologue
    .line 182
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-eqz v3, :cond_1

    .line 184
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 186
    .local v0, "associations":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 190
    .local v1, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 192
    .local v2, "wild":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_0
    if-eqz v2, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lorg/apache/xalan/templates/TemplateList;->insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    :goto_1
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v2

    goto :goto_0

    .line 211
    .end local v0    # "associations":Ljava/util/Enumeration;
    .end local v1    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .end local v2    # "wild":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_1
    return-void

    .line 199
    .restart local v0    # "associations":Ljava/util/Enumeration;
    .restart local v1    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .restart local v2    # "wild":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method dumpAssociationTables()V
    .locals 5

    .prologue
    .line 136
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 138
    .local v0, "associations":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 143
    .local v1, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_1
    if-eqz v1, :cond_0

    .line 145
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_1

    .line 151
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n....."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v1    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 156
    .restart local v1    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "wild card list: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 158
    :goto_2
    if-eqz v1, :cond_2

    .line 160
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_2

    .line 166
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n....."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;

    .prologue
    .line 433
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    .line 436
    .local v1, "targetNodeType":S
    packed-switch v1, :pswitch_data_0

    .line 465
    :pswitch_0
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 469
    .local v0, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_0
    return-object v0

    .line 440
    :pswitch_1
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 442
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 445
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_2
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 446
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 449
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_3
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 451
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 453
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_4
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 455
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 457
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_5
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 458
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 461
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_6
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 462
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getTemplate(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    .prologue
    .line 416
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "mode"    # Lorg/apache/xml/utils/QName;
    .param p4, "maxImportLevel"    # I
    .param p5, "endImportLevel"    # I
    .param p6, "quietConflictWarnings"    # Z
    .param p7, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 666
    invoke-virtual {p0, p1, p2, p7}, Lorg/apache/xalan/templates/TemplateList;->getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v0

    .line 668
    .local v0, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    if-eqz v0, :cond_2

    .line 673
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    .line 674
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 679
    :cond_0
    const/4 v3, -0x1

    if-le p4, v3, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v3

    if-le v3, p4, :cond_3

    .line 697
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    .line 701
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    :cond_2
    move-object v1, v2

    .line 706
    :goto_0
    return-object v1

    .line 683
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    sub-int v4, p4, p5

    if-gt v3, v4, :cond_4

    .line 701
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    move-object v1, v2

    goto :goto_0

    .line 685
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    .line 686
    .local v1, "template":Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 688
    iget-object v3, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, p3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    if-eqz p6, :cond_5

    .line 692
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 701
    :cond_5
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_0

    .line 701
    .end local v1    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v2
.end method

.method public getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "mode"    # Lorg/apache/xml/utils/QName;
    .param p4, "quietConflictWarnings"    # Z
    .param p5, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0, p1, p2, p5}, Lorg/apache/xalan/templates/TemplateList;->getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v0

    .line 603
    .local v0, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    if-eqz v0, :cond_3

    .line 608
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    .line 609
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 614
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    .line 615
    .local v1, "template":Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 617
    iget-object v2, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    sget-object v3, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, p3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 620
    if-eqz p4, :cond_1

    .line 621
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 635
    .end local v1    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :goto_0
    return-object v1

    .line 626
    .restart local v1    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    .line 630
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 635
    .end local v1    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 630
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v2
.end method

.method public getTemplateFast(Lorg/apache/xpath/XPathContext;IILorg/apache/xml/utils/QName;IZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "expTypeID"    # I
    .param p4, "mode"    # Lorg/apache/xml/utils/QName;
    .param p5, "maxImportLevel"    # I
    .param p6, "quietConflictWarnings"    # Z
    .param p7, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 504
    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 533
    :pswitch_0
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 537
    .local v0, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_0
    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 540
    if-nez v0, :cond_0

    move-object v1, v2

    .line 575
    :goto_1
    return-object v1

    .line 508
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_1
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p3}, Lorg/apache/xml/dtm/DTM;->getLocalNameFromExpandedNameID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 510
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 513
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_2
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 514
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 517
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_3
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 519
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 521
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_4
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 523
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 525
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_5
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 526
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 529
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_6
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 530
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    .line 552
    :cond_1
    const/4 v3, -0x1

    if-le p5, v3, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v3

    if-le v3, p5, :cond_3

    .line 568
    :cond_2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 572
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    move-object v1, v2

    .line 575
    goto :goto_1

    .line 556
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    .line 557
    .local v1, "template":Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 559
    iget-object v3, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v3, p1, p2, p7, p3}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0, p4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    if-eqz p6, :cond_4

    .line 563
    invoke-direct {p0, v0, p1, p2, p4}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_1

    .end local v1    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v2

    .line 504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getWalker()Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
    .locals 2

    .prologue
    .line 715
    new-instance v0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;-><init>(Lorg/apache/xalan/templates/TemplateList;Lorg/apache/xalan/templates/TemplateList$1;)V

    return-object v0
.end method

.method public setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 14
    .param p1, "template"    # Lorg/apache/xalan/templates/ElemTemplate;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 66
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v4

    .line 68
    .local v4, "matchXPath":Lorg/apache/xpath/XPath;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v9

    if-nez v9, :cond_0

    if-nez v4, :cond_0

    .line 70
    const-string v9, "ER_NEED_NAME_OR_MATCH_ATTRIB"

    new-array v10, v13, [Ljava/lang/Object;

    const-string v11, "xsl:template"

    aput-object v11, v10, v12

    invoke-virtual {p1, v9, v10}, Lorg/apache/xalan/templates/ElemTemplate;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 76
    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    .line 77
    .local v1, "existingTemplate":Lorg/apache/xalan/templates/ElemTemplate;
    if-nez v1, :cond_3

    .line 79
    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v1    # "existingTemplate":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v4}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    .line 103
    .local v3, "matchExpr":Lorg/apache/xpath/Expression;
    instance-of v9, v3, Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v9, :cond_5

    .line 105
    check-cast v3, Lorg/apache/xpath/patterns/StepPattern;

    .end local v3    # "matchExpr":Lorg/apache/xpath/Expression;
    invoke-direct {p0, v3, p1}, Lorg/apache/xalan/templates/TemplateList;->insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V

    .line 124
    :cond_2
    return-void

    .line 83
    .restart local v1    # "existingTemplate":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_3
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v0

    .line 85
    .local v0, "existingPrecedence":I
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v6

    .line 86
    .local v6, "newPrecedence":I
    if-le v6, v0, :cond_4

    .line 89
    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_4
    if-ne v6, v0, :cond_1

    .line 92
    const-string v9, "ER_DUPLICATE_NAMED_TEMPLATE"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p1, v9, v10}, Lorg/apache/xalan/templates/ElemTemplate;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    .end local v0    # "existingPrecedence":I
    .end local v1    # "existingTemplate":Lorg/apache/xalan/templates/ElemTemplate;
    .end local v6    # "newPrecedence":I
    .restart local v3    # "matchExpr":Lorg/apache/xpath/Expression;
    :cond_5
    instance-of v9, v3, Lorg/apache/xpath/patterns/UnionPattern;

    if-eqz v9, :cond_2

    move-object v8, v3

    .line 109
    check-cast v8, Lorg/apache/xpath/patterns/UnionPattern;

    .line 110
    .local v8, "upat":Lorg/apache/xpath/patterns/UnionPattern;
    invoke-virtual {v8}, Lorg/apache/xpath/patterns/UnionPattern;->getPatterns()[Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v7

    .line 111
    .local v7, "pats":[Lorg/apache/xpath/patterns/StepPattern;
    array-length v5, v7

    .line 113
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 115
    aget-object v9, v7, v2

    invoke-direct {p0, v9, p1}, Lorg/apache/xalan/templates/TemplateList;->insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
