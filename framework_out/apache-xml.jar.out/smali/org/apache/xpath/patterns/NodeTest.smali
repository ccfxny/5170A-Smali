.class public Lorg/apache/xpath/patterns/NodeTest;
.super Lorg/apache/xpath/Expression;
.source "NodeTest.java"


# static fields
.field public static final SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

.field public static final SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

.field public static final SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

.field public static final SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

.field public static final SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

.field public static final SHOW_BYFUNCTION:I = 0x10000

.field public static final SUPPORTS_PRE_STRIPPING:Ljava/lang/String; = "http://xml.apache.org/xpath/features/whitespace-pre-stripping"

.field public static final WILD:Ljava/lang/String; = "*"

.field static final serialVersionUID:J = -0x4f9cee24b2b98886L


# instance fields
.field private m_isTotallyWild:Z

.field protected m_name:Ljava/lang/String;

.field m_namespace:Ljava/lang/String;

.field m_score:Lorg/apache/xpath/objects/XNumber;

.field protected m_whatToShow:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 158
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    .line 165
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v2, -0x4030000000000000L    # -0.25

    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

    .line 173
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

    .line 181
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    .line 188
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "whatToShow"    # I

    .prologue
    .line 211
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    .line 212
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    .line 213
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "whatToShow"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static debugWhatToShow(I)V
    .locals 6
    .param p0, "whatToShow"    # I

    .prologue
    .line 416
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 418
    .local v2, "v":Ljava/util/Vector;
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_0

    .line 419
    const-string v3, "SHOW_ATTRIBUTE"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 421
    :cond_0
    and-int/lit16 v3, p0, 0x1000

    if-eqz v3, :cond_1

    .line 422
    const-string v3, "SHOW_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 424
    :cond_1
    and-int/lit8 v3, p0, 0x8

    if-eqz v3, :cond_2

    .line 425
    const-string v3, "SHOW_CDATA_SECTION"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 427
    :cond_2
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_3

    .line 428
    const-string v3, "SHOW_COMMENT"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 430
    :cond_3
    and-int/lit16 v3, p0, 0x100

    if-eqz v3, :cond_4

    .line 431
    const-string v3, "SHOW_DOCUMENT"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 433
    :cond_4
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_5

    .line 434
    const-string v3, "SHOW_DOCUMENT_FRAGMENT"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 436
    :cond_5
    and-int/lit16 v3, p0, 0x200

    if-eqz v3, :cond_6

    .line 437
    const-string v3, "SHOW_DOCUMENT_TYPE"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 439
    :cond_6
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_7

    .line 440
    const-string v3, "SHOW_ELEMENT"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 442
    :cond_7
    and-int/lit8 v3, p0, 0x20

    if-eqz v3, :cond_8

    .line 443
    const-string v3, "SHOW_ENTITY"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 445
    :cond_8
    and-int/lit8 v3, p0, 0x10

    if-eqz v3, :cond_9

    .line 446
    const-string v3, "SHOW_ENTITY_REFERENCE"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 448
    :cond_9
    and-int/lit16 v3, p0, 0x800

    if-eqz v3, :cond_a

    .line 449
    const-string v3, "SHOW_NOTATION"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 451
    :cond_a
    and-int/lit8 v3, p0, 0x40

    if-eqz v3, :cond_b

    .line 452
    const-string v3, "SHOW_PROCESSING_INSTRUCTION"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 454
    :cond_b
    and-int/lit8 v3, p0, 0x4

    if-eqz v3, :cond_c

    .line 455
    const-string v3, "SHOW_TEXT"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 457
    :cond_c
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 459
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_e

    .line 461
    if-lez v0, :cond_d

    .line 462
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 464
    :cond_d
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_e
    if-nez v1, :cond_f

    .line 468
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "empty whatToShow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 470
    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 471
    return-void
.end method

.method public static getNodeTypeTest(I)I
    .locals 1
    .param p0, "whatToShow"    # I

    .prologue
    .line 362
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    .line 365
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 366
    const/4 v0, 0x2

    goto :goto_0

    .line 368
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 369
    const/4 v0, 0x3

    goto :goto_0

    .line 371
    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    .line 372
    const/16 v0, 0x9

    goto :goto_0

    .line 374
    :cond_3
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_4

    .line 375
    const/16 v0, 0xb

    goto :goto_0

    .line 377
    :cond_4
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_5

    .line 378
    const/16 v0, 0xd

    goto :goto_0

    .line 380
    :cond_5
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_6

    .line 381
    const/16 v0, 0x8

    goto :goto_0

    .line 383
    :cond_6
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_7

    .line 384
    const/4 v0, 0x7

    goto :goto_0

    .line 386
    :cond_7
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_8

    .line 387
    const/16 v0, 0xa

    goto :goto_0

    .line 389
    :cond_8
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_9

    .line 390
    const/4 v0, 0x6

    goto :goto_0

    .line 392
    :cond_9
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_a

    .line 393
    const/4 v0, 0x5

    goto :goto_0

    .line 395
    :cond_a
    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_b

    .line 396
    const/16 v0, 0xc

    goto :goto_0

    .line 398
    :cond_b
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_c

    .line 399
    const/4 v0, 0x4

    goto :goto_0

    .line 402
    :cond_c
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "p"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 488
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    const-string v0, "*"

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "p"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 504
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "*"

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calcScore()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 325
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    .line 334
    :goto_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    const-string v1, "*"

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    .line 335
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    const-string v1, "*"

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    const-string v1, "*"

    if-ne v0, v1, :cond_2

    .line 328
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    const-string v1, "*"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    const-string v1, "*"

    if-ne v0, v1, :cond_3

    .line 330
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 332
    :cond_3
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 334
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 689
    const/4 v0, 0x0

    const-string v1, "callVisitors should not be called for this object!!!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/patterns/NodeTest;->assertion(ZLjava/lang/String;)V

    .line 690
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 223
    check-cast v0, Lorg/apache/xpath/patterns/NodeTest;

    .line 225
    .local v0, "nt":Lorg/apache/xpath/patterns/NodeTest;
    iget-object v2, v0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 227
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, v0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    :cond_2
    iget-object v2, v0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 237
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, v0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    :cond_3
    iget v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    iget v3, v0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v2, v3, :cond_0

    .line 248
    iget-boolean v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    iget-boolean v3, v0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    if-ne v2, v3, :cond_0

    .line 251
    const/4 v1, 0x1

    goto :goto_0

    .line 232
    :cond_4
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 242
    :cond_5
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 530
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v2

    .line 532
    .local v2, "nodeType":S
    iget v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 533
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    .line 580
    :goto_0
    return-object v4

    .line 535
    :cond_0
    iget v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v5, 0x1

    add-int/lit8 v6, v2, -0x1

    shl-int/2addr v5, v6

    and-int v1, v4, v5

    .line 537
    .local v1, "nodeBit":I
    sparse-switch v1, :sswitch_data_0

    .line 580
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 541
    :sswitch_0
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 543
    :sswitch_1
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 550
    :sswitch_2
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 552
    :sswitch_3
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_1
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 569
    :sswitch_4
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "ns":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_2
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 576
    .end local v3    # "ns":Ljava/lang/String;
    :sswitch_5
    iget-boolean v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    if-nez v4, :cond_3

    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_4
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
        0x400 -> :sswitch_0
        0x1000 -> :sswitch_4
    .end sparse-switch
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p4, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 604
    iget v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 605
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    .line 653
    :goto_0
    return-object v2

    .line 607
    :cond_0
    iget v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v3, 0x1

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v4

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    and-int v0, v2, v3

    .line 610
    .local v0, "nodeBit":I
    sparse-switch v0, :sswitch_data_0

    .line 653
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 614
    :sswitch_0
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 616
    :sswitch_1
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 623
    :sswitch_2
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 625
    :sswitch_3
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 642
    :sswitch_4
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "ns":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 649
    .end local v1    # "ns":Ljava/lang/String;
    :sswitch_5
    iget-boolean v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    if-nez v2, :cond_3

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_4
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 610
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
        0x400 -> :sswitch_0
        0x1000 -> :sswitch_4
    .end sparse-switch
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 682
    return-void
.end method

.method public getDefaultScore()D
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNumber;->num()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticScore()Lorg/apache/xpath/objects/XNumber;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    return v0
.end method

.method public initNodeTest(I)V
    .locals 0
    .param p1, "whatToShow"    # I

    .prologue
    .line 269
    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    .line 271
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    .line 272
    return-void
.end method

.method public initNodeTest(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "whatToShow"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    .line 288
    iput-object p2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    .line 292
    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "ns"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setStaticScore(Lorg/apache/xpath/objects/XNumber;)V
    .locals 0
    .param p1, "score"    # Lorg/apache/xpath/objects/XNumber;

    .prologue
    .line 315
    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    .line 316
    return-void
.end method

.method public setWhatToShow(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 88
    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    .line 89
    return-void
.end method
