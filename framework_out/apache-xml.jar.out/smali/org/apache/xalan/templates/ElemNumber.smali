.class public Lorg/apache/xalan/templates/ElemNumber;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;,
        Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    }
.end annotation


# static fields
.field private static final m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

.field static final serialVersionUID:J = 0x70aa9b8ab17ec4baL


# instance fields
.field private m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

.field private m_countMatchPattern:Lorg/apache/xpath/XPath;

.field private m_format_avt:Lorg/apache/xalan/templates/AVT;

.field private m_fromMatchPattern:Lorg/apache/xpath/XPath;

.field private m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

.field private m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lang_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

.field private m_level:I

.field private m_valueExpr:Lorg/apache/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    .line 487
    const/4 v0, 0x7

    new-array v7, v0, [Lorg/apache/xalan/transformer/DecimalToRoman;

    const/4 v8, 0x0

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x3e8

    const-string v3, "M"

    const-wide/16 v4, 0x384

    const-string v6, "CM"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x1f4

    const-string v3, "D"

    const-wide/16 v4, 0x190

    const-string v6, "CD"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x64

    const-string v3, "C"

    const-wide/16 v4, 0x5a

    const-string v6, "XC"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x32

    const-string v3, "L"

    const-wide/16 v4, 0x28

    const-string v6, "XL"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0xa

    const-string v3, "X"

    const-wide/16 v4, 0x9

    const-string v6, "IX"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x5

    const-string v3, "V"

    const-wide/16 v4, 0x4

    const-string v6, "IV"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-string v3, "I"

    const-string v6, "I"

    move-wide v1, v10

    move-wide v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    sput-object v7, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 83
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 136
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    .line 181
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    .line 243
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    .line 277
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    .line 311
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    .line 344
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    .line 383
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    .line 417
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    .line 451
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    .line 2007
    return-void
.end method

.method private findPrecedingOrAncestorOrSelf(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I
    .locals 8
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "fromMatchPattern"    # Lorg/apache/xpath/XPath;
    .param p3, "countMatchPattern"    # Lorg/apache/xpath/XPath;
    .param p4, "context"    # I
    .param p5, "namespaceContext"    # Lorg/apache/xalan/templates/ElemNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v4, -0x1

    .line 665
    invoke-virtual {p1, p4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 666
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_0
    :goto_0
    if-eq v4, p4, :cond_1

    .line 668
    if-eqz p2, :cond_2

    .line 670
    invoke-virtual {p2, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-eqz v2, :cond_2

    .line 673
    const/4 p4, -0x1

    .line 705
    :cond_1
    return p4

    .line 679
    :cond_2
    if-eqz p3, :cond_3

    .line 681
    invoke-virtual {p3, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-nez v2, :cond_1

    .line 688
    :cond_3
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result v1

    .line 690
    .local v1, "prevSibling":I
    if-ne v4, v1, :cond_4

    .line 692
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p4

    goto :goto_0

    .line 698
    :cond_4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result p4

    .line 700
    if-ne p4, v4, :cond_0

    .line 701
    move p4, v1

    goto :goto_0
.end method

.method private getFormattedNumber(Lorg/apache/xalan/transformer/TransformerImpl;ICIJLorg/apache/xml/utils/FastStringBuffer;)V
    .locals 19
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "contextNode"    # I
    .param p3, "numberType"    # C
    .param p4, "numberWidth"    # I
    .param p5, "listElement"    # J
    .param p7, "formattedNumber"    # Lorg/apache/xml/utils/FastStringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1322
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v14

    move/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v13, v14, v0, v1}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v7

    .line 1330
    .local v7, "letterVal":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 1332
    .local v4, "alphaCountTable":Lorg/apache/xml/utils/res/CharArrayWrapper;
    const/4 v12, 0x0

    .line 1334
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    sparse-switch p3, :sswitch_data_0

    .line 1557
    invoke-direct/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getNumberFormatter(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;

    move-result-object v5

    .line 1558
    .local v5, "formatter":Ljava/text/DecimalFormat;
    if-nez v5, :cond_e

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1559
    .local v10, "padString":Ljava/lang/String;
    :goto_1
    if-nez v5, :cond_f

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 1560
    .local v9, "numString":Ljava/lang/String;
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v8, p4, v13

    .line 1562
    .local v8, "nPadding":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    if-ge v6, v8, :cond_10

    .line 1564
    move-object/from16 v0, p7

    invoke-virtual {v0, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1562
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1322
    .end local v4    # "alphaCountTable":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .end local v5    # "formatter":Ljava/text/DecimalFormat;
    .end local v6    # "k":I
    .end local v7    # "letterVal":Ljava/lang/String;
    .end local v8    # "nPadding":I
    .end local v9    # "numString":Ljava/lang/String;
    .end local v10    # "padString":Ljava/lang/String;
    .end local v12    # "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1337
    .restart local v4    # "alphaCountTable":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .restart local v7    # "letterVal":Ljava/lang/String;
    .restart local v12    # "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    if-nez v13, :cond_1

    .line 1338
    const-string v13, "org.apache.xml.utils.res.XResources"

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1341
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1343
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1569
    :goto_4
    return-void

    .line 1346
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    if-nez v13, :cond_2

    .line 1347
    const-string v13, "org.apache.xml.utils.res.XResources"

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1350
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1352
    :cond_2
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v11

    .line 1356
    .local v11, "stringBuf":Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13, v11}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1357
    invoke-virtual {v11}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    invoke-static {v11}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    goto :goto_4

    :catchall_0
    move-exception v13

    invoke-static {v11}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v13

    .line 1367
    .end local v11    # "stringBuf":Lorg/apache/xml/utils/FastStringBuffer;
    :sswitch_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_4

    .line 1370
    :sswitch_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_4

    .line 1377
    :sswitch_4
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "ja"

    const-string v16, "JP"

    const-string v17, "HA"

    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1380
    if-eqz v7, :cond_3

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1382
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1384
    :cond_3
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1394
    :sswitch_5
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "ja"

    const-string v16, "JP"

    const-string v17, "HI"

    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1397
    if-eqz v7, :cond_4

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1399
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1401
    :cond_4
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1411
    :sswitch_6
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "ja"

    const-string v16, "JP"

    const-string v17, "A"

    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1414
    if-eqz v7, :cond_5

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1416
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1418
    :cond_5
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1428
    :sswitch_7
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "ja"

    const-string v16, "JP"

    const-string v17, "I"

    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1431
    if-eqz v7, :cond_6

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1433
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1435
    :cond_6
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1445
    :sswitch_8
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "zh"

    const-string v16, "CN"

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1448
    if-eqz v7, :cond_7

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1451
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1454
    :cond_7
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    .line 1463
    :sswitch_9
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "zh"

    const-string v16, "TW"

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1466
    if-eqz v7, :cond_8

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1468
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1470
    :cond_8
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    .line 1479
    :sswitch_a
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "th"

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1482
    if-eqz v7, :cond_9

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1484
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1486
    :cond_9
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    .line 1495
    :sswitch_b
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "he"

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1498
    if-eqz v7, :cond_a

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1500
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1502
    :cond_a
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    .line 1511
    :sswitch_c
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "ka"

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1514
    if-eqz v7, :cond_b

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1516
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1518
    :cond_b
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    .line 1527
    :sswitch_d
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "el"

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1530
    if-eqz v7, :cond_c

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1532
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1534
    :cond_c
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    .line 1543
    :sswitch_e
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "cy"

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    .line 1546
    if-eqz v7, :cond_d

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1548
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1550
    :cond_d
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    .line 1558
    .restart local v5    # "formatter":Ljava/text/DecimalFormat;
    :cond_e
    const-wide/16 v14, 0x0

    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 1559
    .restart local v10    # "padString":Ljava/lang/String;
    :cond_f
    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 1567
    .restart local v6    # "k":I
    .restart local v8    # "nPadding":I
    .restart local v9    # "numString":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1334
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x49 -> :sswitch_2
        0x61 -> :sswitch_1
        0x69 -> :sswitch_3
        0x3b1 -> :sswitch_d
        0x430 -> :sswitch_e
        0x5d0 -> :sswitch_b
        0xe51 -> :sswitch_a
        0x10d0 -> :sswitch_c
        0x3042 -> :sswitch_4
        0x3044 -> :sswitch_5
        0x30a2 -> :sswitch_6
        0x30a4 -> :sswitch_7
        0x4e00 -> :sswitch_8
        0x58f9 -> :sswitch_9
    .end sparse-switch
.end method

.method private getNumberFormatter(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;
    .locals 13
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1087
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    .line 1090
    .local v4, "locale":Ljava/util/Locale;
    const/4 v3, 0x0

    .line 1097
    .local v3, "formatter":Ljava/text/DecimalFormat;
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v8

    invoke-virtual {v7, v8, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "digitGroupSepValue":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v12, :cond_0

    .line 1108
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v7

    const-string v8, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "name"

    aput-object v10, v9, v11

    iget-object v10, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v10}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    :cond_0
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v8

    invoke-virtual {v7, v8, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v5

    .line 1120
    .local v5, "nDigitsPerGroupValue":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1126
    :try_start_0
    invoke-static {v4}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/text/DecimalFormat;

    move-object v3, v0

    .line 1127
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    .line 1130
    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    .line 1131
    .local v6, "symbols":Ljava/text/DecimalFormatSymbols;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 1132
    invoke-virtual {v3, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 1133
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .end local v6    # "symbols":Ljava/text/DecimalFormatSymbols;
    :cond_2
    :goto_1
    return-object v3

    .end local v1    # "digitGroupSepValue":Ljava/lang/String;
    .end local v5    # "nDigitsPerGroupValue":Ljava/lang/String;
    :cond_3
    move-object v1, v5

    .line 1097
    goto :goto_0

    .line 1135
    .restart local v1    # "digitGroupSepValue":Ljava/lang/String;
    .restart local v5    # "nDigitsPerGroupValue":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1137
    .local v2, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3, v11}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    goto :goto_1
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 4
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    .line 586
    const-string v0, "ER_CANNOT_ADD"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemNumber;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    const/4 v0, 0x0

    return-object v0
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    .prologue
    .line 1978
    if-eqz p2, :cond_7

    .line 1980
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1982
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_1

    .line 1983
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1984
    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_2

    .line 1985
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1987
    :cond_2
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_3

    .line 1988
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1989
    :cond_3
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_4

    .line 1990
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1991
    :cond_4
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_5

    .line 1992
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1993
    :cond_5
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_6

    .line 1994
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1995
    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_7

    .line 1996
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1999
    :cond_7
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 2000
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 505
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 506
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    .line 507
    .local v1, "vnames":Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_0

    .line 508
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 509
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 511
    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_2

    .line 512
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 513
    :cond_2
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_3

    .line 514
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 515
    :cond_3
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_4

    .line 516
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 517
    :cond_4
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_5

    .line 518
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 519
    :cond_5
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_6

    .line 520
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 521
    :cond_6
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_7

    .line 522
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 523
    :cond_7
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 7
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v2

    .line 561
    .local v2, "sourceNode":I
    invoke-virtual {p0, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->getCountString(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "countString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    return-void

    .line 568
    :catch_0
    move-exception v1

    .line 570
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method findAncestor(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "fromMatchPattern"    # Lorg/apache/xpath/XPath;
    .param p3, "countMatchPattern"    # Lorg/apache/xpath/XPath;
    .param p4, "context"    # I
    .param p5, "namespaceContext"    # Lorg/apache/xalan/templates/ElemNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 615
    invoke-virtual {p1, p4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 616
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    :goto_0
    const/4 v1, -0x1

    if-eq v1, p4, :cond_0

    .line 618
    if-eqz p2, :cond_1

    .line 620
    invoke-virtual {p2, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    .line 641
    :cond_0
    return p4

    .line 629
    :cond_1
    if-eqz p3, :cond_2

    .line 631
    invoke-virtual {p3, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 638
    :cond_2
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p4

    goto :goto_0
.end method

.method formatNumberList(Lorg/apache/xalan/transformer/TransformerImpl;[JI)Ljava/lang/String;
    .locals 20
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "list"    # [J
    .param p3, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1163
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v10

    .line 1167
    .local v10, "formattedNumber":Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    .local v18, "nNumbers":I
    const/4 v7, 0x1

    .line 1168
    .local v7, "numberWidth":I
    const/16 v6, 0x31

    .line 1169
    .local v6, "numberType":C
    const/16 v17, 0x0

    .local v17, "lastSepString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1178
    .local v11, "formatTokenString":Ljava/lang/String;
    const-string v16, "."

    .line 1179
    .local v16, "lastSep":Ljava/lang/String;
    const/4 v15, 0x1

    .line 1180
    .local v15, "isFirstToken":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    move/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v3, v4, v0, v1}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v13

    .line 1185
    .local v13, "formatValue":Ljava/lang/String;
    :goto_0
    if-nez v13, :cond_0

    .line 1186
    const-string v13, "1"

    .line 1188
    :cond_0
    new-instance v12, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;-><init>(Lorg/apache/xalan/templates/ElemNumber;Ljava/lang/String;)V

    .line 1193
    .local v12, "formatTokenizer":Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_9

    .line 1197
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1199
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1203
    .local v2, "formatToken":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1206
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 1207
    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1257
    .end local v2    # "formatToken":Ljava/lang/String;
    :cond_1
    :goto_2
    if-eqz v11, :cond_8

    if-eqz v15, :cond_8

    .line 1259
    invoke-virtual {v10, v11}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1264
    :cond_2
    :goto_3
    aget-wide v8, p2, v14

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v3 .. v10}, Lorg/apache/xalan/templates/ElemNumber;->getFormattedNumber(Lorg/apache/xalan/transformer/TransformerImpl;ICIJLorg/apache/xml/utils/FastStringBuffer;)V

    .line 1267
    const/4 v15, 0x0

    .line 1193
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1180
    .end local v12    # "formatTokenizer":Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .end local v13    # "formatValue":Ljava/lang/String;
    .end local v14    # "i":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 1212
    .restart local v2    # "formatToken":Ljava/lang/String;
    .restart local v12    # "formatTokenizer":Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .restart local v13    # "formatValue":Ljava/lang/String;
    .restart local v14    # "i":I
    :cond_4
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1214
    move-object v11, v2

    .line 1219
    :goto_4
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextIsSep()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1221
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 1229
    :cond_5
    if-nez v15, :cond_6

    .line 1230
    move-object/from16 v16, v11

    .line 1233
    :cond_6
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1234
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 1235
    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_2

    .line 1242
    :cond_7
    move-object/from16 v17, v2

    .line 1245
    :goto_5
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1247
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 1261
    .end local v2    # "formatToken":Ljava/lang/String;
    :cond_8
    if-eqz v16, :cond_2

    if-nez v15, :cond_2

    .line 1262
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1291
    .end local v6    # "numberType":C
    .end local v7    # "numberWidth":I
    .end local v11    # "formatTokenString":Ljava/lang/String;
    .end local v12    # "formatTokenizer":Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .end local v13    # "formatValue":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "isFirstToken":Z
    .end local v16    # "lastSep":Ljava/lang/String;
    .end local v17    # "lastSepString":Ljava/lang/String;
    .end local v18    # "nNumbers":I
    :catchall_0
    move-exception v3

    invoke-static {v10}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v3

    .line 1272
    .restart local v6    # "numberType":C
    .restart local v7    # "numberWidth":I
    .restart local v11    # "formatTokenString":Ljava/lang/String;
    .restart local v12    # "formatTokenizer":Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .restart local v13    # "formatValue":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "isFirstToken":Z
    .restart local v16    # "lastSep":Ljava/lang/String;
    .restart local v17    # "lastSepString":Ljava/lang/String;
    .restart local v18    # "nNumbers":I
    :cond_9
    :goto_6
    :try_start_1
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1274
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_6

    .line 1277
    :cond_a
    if-eqz v17, :cond_b

    .line 1278
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1280
    :cond_b
    :goto_7
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1282
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1284
    .restart local v2    # "formatToken":Ljava/lang/String;
    invoke-virtual {v10, v2}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_7

    .line 1287
    .end local v2    # "formatToken":Ljava/lang/String;
    :cond_c
    invoke-virtual {v10}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    .line 1291
    .local v19, "numStr":Ljava/lang/String;
    invoke-static {v10}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1294
    return-object v19
.end method

.method public getCount()Lorg/apache/xpath/XPath;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;
    .locals 10
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;
    .param p2, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 722
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    .line 723
    .local v4, "countMatchPattern":Lorg/apache/xpath/XPath;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v3

    .line 724
    .local v3, "dtm":Lorg/apache/xml/dtm/DTM;
    if-nez v4, :cond_0

    .line 726
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 770
    :pswitch_0
    const/4 v4, 0x0

    .line 774
    :cond_0
    :goto_0
    return-object v4

    .line 731
    :pswitch_1
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 732
    new-instance v0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V

    .line 737
    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    .local v0, "resolver":Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    :goto_1
    new-instance v4, Lorg/apache/xpath/XPath;

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 739
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto :goto_0

    .line 734
    .end local v0    # "resolver":Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    :cond_1
    new-instance v0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, p0

    move v4, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V

    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    .restart local v0    # "resolver":Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    goto :goto_1

    .line 744
    .end local v0    # "resolver":Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    :pswitch_2
    new-instance v4, Lorg/apache/xpath/XPath;

    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 746
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto :goto_0

    .line 751
    :pswitch_3
    new-instance v4, Lorg/apache/xpath/XPath;

    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    const-string v5, "text()"

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 752
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto :goto_0

    .line 756
    :pswitch_4
    new-instance v4, Lorg/apache/xpath/XPath;

    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    const-string v5, "comment()"

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 757
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto :goto_0

    .line 761
    :pswitch_5
    new-instance v4, Lorg/apache/xpath/XPath;

    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    const-string v5, "/"

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 762
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto :goto_0

    .line 766
    :pswitch_6
    new-instance v4, Lorg/apache/xpath/XPath;

    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 768
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto/16 :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getCountString(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/lang/String;
    .locals 20
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "sourceNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 791
    const/4 v13, 0x0

    .line 792
    .local v13, "list":[J
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v15

    .line 793
    .local v15, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCountersTable()Lorg/apache/xalan/transformer/CountersTable;

    move-result-object v8

    .line 795
    .local v8, "ctable":Lorg/apache/xalan/transformer/CountersTable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v15, v1, v2}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    .line 799
    .local v5, "countObj":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 800
    .local v10, "d_count":D
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v16, "NaN"

    .line 838
    .end local v5    # "countObj":Lorg/apache/xpath/objects/XObject;
    .end local v10    # "d_count":D
    :goto_0
    return-object v16

    .line 801
    .restart local v5    # "countObj":Lorg/apache/xpath/objects/XObject;
    .restart local v10    # "d_count":D
    :cond_0
    const-wide/16 v16, 0x0

    cmpg-double v16, v10, v16

    if-gez v16, :cond_1

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string v16, "-Infinity"

    goto :goto_0

    .line 802
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-eqz v16, :cond_2

    const-string v16, "Infinity"

    goto :goto_0

    .line 803
    :cond_2
    const-wide/16 v16, 0x0

    cmpl-double v16, v10, v16

    if-nez v16, :cond_3

    const-string v16, "0"

    goto :goto_0

    .line 805
    :cond_3
    double-to-long v6, v10

    .line 806
    .local v6, "count":J
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v13, v0, [J

    .line 807
    const/16 v16, 0x0

    aput-wide v6, v13, v16

    .line 838
    .end local v5    # "countObj":Lorg/apache/xpath/objects/XObject;
    .end local v6    # "count":J
    .end local v10    # "d_count":D
    :cond_4
    :goto_1
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v13, v2}, Lorg/apache/xalan/templates/ElemNumber;->formatNumberList(Lorg/apache/xalan/transformer/TransformerImpl;[JI)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 812
    :cond_5
    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 814
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v13, v0, [J

    .line 815
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v8, v15, v0, v1}, Lorg/apache/xalan/transformer/CountersTable;->countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    aput-wide v18, v13, v16

    goto :goto_1

    .line 819
    :cond_6
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2}, Lorg/apache/xalan/templates/ElemNumber;->getMatchingAncestors(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xml/utils/NodeVector;

    move-result-object v4

    .line 822
    .local v4, "ancestors":Lorg/apache/xml/utils/NodeVector;
    invoke-virtual {v4}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v16

    add-int/lit8 v12, v16, -0x1

    .line 824
    .local v12, "lastIndex":I
    if-ltz v12, :cond_4

    .line 826
    add-int/lit8 v16, v12, 0x1

    move/from16 v0, v16

    new-array v13, v0, [J

    .line 828
    move v9, v12

    .local v9, "i":I
    :goto_3
    if-ltz v9, :cond_4

    .line 830
    invoke-virtual {v4, v9}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v14

    .line 832
    .local v14, "target":I
    sub-int v16, v12, v9

    move-object/from16 v0, p0

    invoke-virtual {v8, v15, v0, v14}, Lorg/apache/xalan/transformer/CountersTable;->countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    aput-wide v18, v13, v16

    .line 828
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 819
    .end local v4    # "ancestors":Lorg/apache/xml/utils/NodeVector;
    .end local v9    # "i":I
    .end local v12    # "lastIndex":I
    .end local v14    # "target":I
    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    .line 838
    :cond_8
    const-string v16, ""

    goto/16 :goto_0
.end method

.method public getFormat()Lorg/apache/xalan/templates/AVT;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getFrom()Lorg/apache/xpath/XPath;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getGroupingSeparator()Lorg/apache/xalan/templates/AVT;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getGroupingSize()Lorg/apache/xalan/templates/AVT;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLang()Lorg/apache/xalan/templates/AVT;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLetterValue()Lorg/apache/xalan/templates/AVT;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    return v0
.end method

.method getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;
    .locals 9
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1037
    const/4 v7, 0x0

    .line 1039
    .local v7, "locale":Ljava/util/Locale;
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_1

    .line 1041
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v8

    .line 1042
    .local v8, "xctxt":Lorg/apache/xpath/XPathContext;
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, v8, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1044
    .local v6, "langValue":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1050
    new-instance v7, Ljava/util/Locale;

    .end local v7    # "locale":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {v7, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .restart local v7    # "locale":Ljava/util/Locale;
    if-nez v7, :cond_0

    .line 1055
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v8, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v4, "WG_LOCALE_NOT_FOUND"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v6, v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 1068
    .end local v6    # "langValue":Ljava/lang/String;
    .end local v8    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_0
    :goto_0
    return-object v7

    .line 1065
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    goto :goto_0
.end method

.method getMatchingAncestors(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xml/utils/NodeVector;
    .locals 8
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "node"    # I
    .param p3, "stopAtFirstFound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 982
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 983
    .local v0, "ancestors":Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v1

    .line 984
    .local v1, "countMatchPattern":Lorg/apache/xpath/XPath;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 986
    .local v2, "dtm":Lorg/apache/xml/dtm/DTM;
    :goto_0
    const/4 v3, -0x1

    if-eq v3, p2, :cond_0

    .line 988
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_1

    .line 999
    if-nez p3, :cond_1

    .line 1019
    :cond_0
    return-object v0

    .line 1003
    :cond_1
    if-nez v1, :cond_2

    .line 1004
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Programmers error! countMatchPattern should never be null!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1007
    :cond_2
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_3

    .line 1010
    invoke-virtual {v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    .line 1012
    if-nez p3, :cond_0

    .line 1016
    :cond_3
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p2

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string v0, "number"

    return-object v0
.end method

.method public getPreviousNode(Lorg/apache/xpath/XPathContext;I)I
    .locals 12
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v8, -0x1

    .line 856
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v1

    .line 857
    .local v1, "countMatchPattern":Lorg/apache/xpath/XPath;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 859
    .local v2, "dtm":Lorg/apache/xml/dtm/DTM;
    const/4 v5, 0x3

    iget v6, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    if-ne v5, v6, :cond_7

    .line 861
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    .line 866
    .local v3, "fromMatchPattern":Lorg/apache/xpath/XPath;
    :cond_0
    if-eq v8, p2, :cond_3

    .line 872
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result v4

    .line 874
    .local v4, "next":I
    if-ne v8, v4, :cond_4

    .line 876
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v4

    .line 878
    if-eq v8, v4, :cond_6

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, v4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v6

    cmpl-double v5, v6, v10

    if-nez v5, :cond_2

    :cond_1
    invoke-interface {v2, v4}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_6

    .line 882
    :cond_2
    const/4 p2, -0x1

    .line 929
    .end local v3    # "fromMatchPattern":Lorg/apache/xpath/XPath;
    .end local v4    # "next":I
    :cond_3
    :goto_0
    return p2

    .line 891
    .restart local v3    # "fromMatchPattern":Lorg/apache/xpath/XPath;
    .restart local v4    # "next":I
    :cond_4
    move v0, v4

    .line 893
    .local v0, "child":I
    :cond_5
    :goto_1
    if-eq v8, v0, :cond_6

    .line 895
    invoke-interface {v2, v4}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result v0

    .line 897
    if-eq v8, v0, :cond_5

    .line 898
    move v4, v0

    goto :goto_1

    .line 902
    .end local v0    # "child":I
    :cond_6
    move p2, v4

    .line 904
    if-eq v8, p2, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v6

    cmpl-double v5, v6, v10

    if-eqz v5, :cond_0

    goto :goto_0

    .line 915
    .end local v3    # "fromMatchPattern":Lorg/apache/xpath/XPath;
    .end local v4    # "next":I
    :cond_7
    if-eq v8, p2, :cond_3

    .line 917
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result p2

    .line 919
    if-eq v8, p2, :cond_7

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v6

    cmpl-double v5, v6, v10

    if-eqz v5, :cond_7

    goto :goto_0
.end method

.method public getTargetNode(Lorg/apache/xpath/XPathContext;I)I
    .locals 7
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "sourceNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 946
    const/4 v6, -0x1

    .line 947
    .local v6, "target":I
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v3

    .line 949
    .local v3, "countMatchPattern":Lorg/apache/xpath/XPath;
    const/4 v0, 0x3

    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    if-ne v0, v1, :cond_0

    .line 951
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber;->findPrecedingOrAncestorOrSelf(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I

    move-result v6

    .line 961
    :goto_0
    return v6

    .line 957
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber;->findAncestor(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I

    move-result v6

    goto :goto_0
.end method

.method public getValue()Lorg/apache/xpath/XPath;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    .prologue
    .line 534
    const/16 v0, 0x23

    return v0
.end method

.method getZeroString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1577
    const-string v0, "0"

    return-object v0
.end method

.method protected int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 15
    .param p1, "val"    # J
    .param p3, "aTable"    # Lorg/apache/xml/utils/res/CharArrayWrapper;
    .param p4, "stringBuf"    # Lorg/apache/xml/utils/FastStringBuffer;

    .prologue
    .line 1624
    invoke-virtual/range {p3 .. p3}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v9

    .line 1625
    .local v9, "radix":I
    new-array v10, v9, [C

    .line 1630
    .local v10, "table":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v11, v9, -0x1

    if-ge v5, v11, :cond_0

    .line 1632
    add-int/lit8 v11, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v12

    aput-char v12, v10, v11

    .line 1630
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1635
    :cond_0
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v12

    aput-char v12, v10, v11

    .line 1640
    const/16 v11, 0x64

    new-array v2, v11, [C

    .line 1648
    .local v2, "buf":[C
    array-length v11, v2

    add-int/lit8 v3, v11, -0x1

    .line 1651
    .local v3, "charPos":I
    const/4 v8, 0x1

    .line 1677
    .local v8, "lookupIndex":I
    const-wide/16 v6, 0x0

    .local v6, "correction":J
    move v4, v3

    .line 1686
    .end local v3    # "charPos":I
    .local v4, "charPos":I
    :goto_1
    if-eqz v8, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-eqz v11, :cond_3

    add-int/lit8 v11, v9, -0x1

    if-ne v8, v11, :cond_3

    :cond_1
    add-int/lit8 v11, v9, -0x1

    int-to-long v6, v11

    .line 1691
    :goto_2
    add-long v12, p1, v6

    long-to-int v11, v12

    rem-int v8, v11, v9

    .line 1694
    int-to-long v12, v9

    div-long p1, p1, v12

    .line 1697
    if-nez v8, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v11, p1, v12

    if-nez v11, :cond_4

    move v3, v4

    .line 1705
    .end local v4    # "charPos":I
    .restart local v3    # "charPos":I
    :cond_2
    add-int/lit8 v11, v3, 0x1

    array-length v12, v2

    sub-int/2addr v12, v3

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v11, v12}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    .line 1706
    return-void

    .line 1686
    .end local v3    # "charPos":I
    .restart local v4    # "charPos":I
    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 1701
    :cond_4
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "charPos":I
    .restart local v3    # "charPos":I
    aget-char v11, v10, v8

    aput-char v11, v2, v4

    .line 1703
    const-wide/16 v12, 0x0

    cmp-long v11, p1, v12

    if-lez v11, :cond_2

    move v4, v3

    .end local v3    # "charPos":I
    .restart local v4    # "charPos":I
    goto :goto_1
.end method

.method protected int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;
    .locals 5
    .param p1, "val"    # J
    .param p3, "table"    # Lorg/apache/xml/utils/res/CharArrayWrapper;

    .prologue
    .line 1595
    invoke-virtual {p3}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v0

    .line 1598
    .local v0, "radix":I
    int-to-long v2, v0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 1600
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    move-result-object v1

    .line 1603
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/Character;

    long-to-int v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected long2roman(JZ)Ljava/lang/String;
    .locals 7
    .param p1, "val"    # J
    .param p3, "prefixesAreOK"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 1933
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    .line 1935
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    move-result-object v1

    .line 1969
    :goto_0
    return-object v1

    .line 1938
    :cond_0
    const-string v1, ""

    .line 1939
    .local v1, "roman":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1941
    .local v0, "place":I
    const-wide/16 v2, 0xf9f

    cmp-long v2, p1, v2

    if-gtz v2, :cond_4

    .line 1945
    :cond_1
    :goto_1
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    .line 1947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postLetter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1948
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    sub-long/2addr p1, v2

    goto :goto_1

    .line 1951
    :cond_2
    if-eqz p3, :cond_3

    .line 1953
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3

    .line 1955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preLetter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1956
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    sub-long/2addr p1, v2

    .line 1960
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1962
    cmp-long v2, p1, v4

    if-gtz v2, :cond_1

    goto :goto_0

    .line 1966
    :cond_4
    const-string v1, "#error"

    goto :goto_0
.end method

.method public setCount(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    .line 152
    return-void
.end method

.method public setFormat(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    .prologue
    .line 323
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    .line 324
    return-void
.end method

.method public setFrom(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    .line 198
    return-void
.end method

.method public setGroupingSeparator(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    .prologue
    .line 430
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    .line 431
    return-void
.end method

.method public setGroupingSize(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    .prologue
    .line 462
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    .line 463
    return-void
.end method

.method public setLang(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    .prologue
    .line 359
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    .line 360
    return-void
.end method

.method public setLetterValue(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    .prologue
    .line 395
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    .line 396
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 255
    iput p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    .line 256
    return-void
.end method

.method public setValue(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    .prologue
    .line 289
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    .line 290
    return-void
.end method

.method protected tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;
    .locals 27
    .param p1, "val"    # J
    .param p3, "thisBundle"    # Lorg/apache/xml/utils/res/XResourceBundle;

    .prologue
    .line 1725
    const-wide v22, 0x7fffffffffffffffL

    cmp-long v22, p1, v22

    if-lez v22, :cond_0

    .line 1727
    const-string v22, "ER_NUMBER_TOO_BIG"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemNumber;->error(Ljava/lang/String;)V

    .line 1728
    const-string v22, "#error"

    .line 1918
    :goto_0
    return-object v22

    .line 1730
    :cond_0
    const/16 v18, 0x0

    .line 1733
    .local v18, "table":[C
    const/4 v11, 0x1

    .line 1738
    .local v11, "lookupIndex":I
    const/16 v22, 0x64

    move/from16 v0, v22

    new-array v3, v0, [C

    .line 1746
    .local v3, "buf":[C
    const/4 v4, 0x0

    .line 1749
    .local v4, "charPos":I
    const-string v22, "numberGroups"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/utils/res/IntArrayWrapper;

    .line 1752
    .local v7, "groups":Lorg/apache/xml/utils/res/IntArrayWrapper;
    const-string v22, "tables"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/xml/utils/res/StringArrayWrapper;

    move-object/from16 v19, v22

    check-cast v19, Lorg/apache/xml/utils/res/StringArrayWrapper;

    .line 1757
    .local v19, "tables":Lorg/apache/xml/utils/res/StringArrayWrapper;
    const-string v22, "numbering"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1760
    .local v17, "numbering":Ljava/lang/String;
    const-string v22, "multiplicative-additive"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1762
    const-string v22, "multiplierOrder"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1763
    .local v14, "mult_order":Ljava/lang/String;
    const-string v22, "multiplier"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/xml/utils/res/LongArrayWrapper;

    move-object/from16 v15, v22

    check-cast v15, Lorg/apache/xml/utils/res/LongArrayWrapper;

    .line 1765
    .local v15, "multiplier":Lorg/apache/xml/utils/res/LongArrayWrapper;
    const-string v22, "zero"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1766
    .local v21, "zeroChar":Lorg/apache/xml/utils/res/CharArrayWrapper;
    const/4 v8, 0x0

    .line 1769
    .local v8, "i":I
    :goto_1
    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_1

    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v22

    cmp-long v22, p1, v22

    if-gez v22, :cond_1

    .line 1771
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1776
    :cond_1
    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-lt v8, v0, :cond_3

    .line 1870
    .end local v8    # "i":I
    .end local v14    # "mult_order":Ljava/lang/String;
    .end local v15    # "multiplier":Lorg/apache/xml/utils/res/LongArrayWrapper;
    .end local v21    # "zeroChar":Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_2
    :goto_2
    const/4 v6, 0x0

    .line 1874
    .local v6, "count":I
    :goto_3
    invoke-virtual {v7}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_11

    .line 1876
    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v22, p1, v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_f

    .line 1877
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1782
    .end local v6    # "count":I
    .restart local v8    # "i":I
    .restart local v14    # "mult_order":Ljava/lang/String;
    .restart local v15    # "multiplier":Lorg/apache/xml/utils/res/LongArrayWrapper;
    .restart local v21    # "zeroChar":Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_3
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v22

    cmp-long v22, p1, v22

    if-gez v22, :cond_7

    .line 1784
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v22

    if-nez v22, :cond_5

    .line 1786
    add-int/lit8 v8, v8, 0x1

    .line 1866
    :cond_4
    :goto_4
    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-lt v8, v0, :cond_1

    goto :goto_2

    .line 1790
    :cond_5
    add-int/lit8 v22, v4, -0x1

    aget-char v22, v3, v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 1791
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "charPos":I
    .local v5, "charPos":I
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v22

    aput-char v22, v3, v4

    move v4, v5

    .line 1793
    .end local v5    # "charPos":I
    .restart local v4    # "charPos":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1796
    :cond_7
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v22

    cmp-long v22, p1, v22

    if-ltz v22, :cond_4

    .line 1798
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v22

    div-long v12, p1, v22

    .line 1800
    .local v12, "mult":J
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v22

    rem-long p1, p1, v22

    .line 1802
    const/4 v10, 0x0

    .line 1804
    .local v10, "k":I
    :goto_5
    invoke-virtual {v7}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_a

    .line 1806
    const/4 v11, 0x1

    .line 1808
    invoke-virtual {v7, v10}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v22, v12, v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_8

    .line 1809
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1814
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/apache/xml/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1816
    .local v2, "THEletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    invoke-virtual {v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v18, v0

    .line 1820
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_6
    invoke-virtual {v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_9

    .line 1822
    add-int/lit8 v22, v9, 0x1

    invoke-virtual {v2, v9}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v23

    aput-char v23, v18, v22

    .line 1820
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1825
    :cond_9
    const/16 v22, 0x0

    add-int/lit8 v23, v9, -0x1

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v23

    aput-char v23, v18, v22

    .line 1828
    long-to-int v0, v12

    move/from16 v22, v0

    invoke-virtual {v7, v10}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v23

    div-int v11, v22, v23

    .line 1831
    if-nez v11, :cond_b

    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-nez v22, :cond_b

    .line 1863
    .end local v2    # "THEletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .end local v9    # "j":I
    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 1834
    .restart local v2    # "THEletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .restart local v9    # "j":I
    :cond_b
    const-string v22, "multiplierChar"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/xml/utils/res/CharArrayWrapper;

    check-cast v22, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v16

    .line 1838
    .local v16, "multiplierChar":C
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_e

    .line 1840
    const-string v22, "precedes"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1842
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "charPos":I
    .restart local v5    # "charPos":I
    aput-char v16, v3, v4

    .line 1843
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "charPos":I
    .restart local v4    # "charPos":I
    aget-char v22, v18, v11

    aput-char v22, v3, v5

    goto :goto_7

    .line 1849
    :cond_c
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_d

    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_d

    .line 1853
    :goto_8
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "charPos":I
    .restart local v5    # "charPos":I
    aput-char v16, v3, v4

    move v4, v5

    .line 1856
    .end local v5    # "charPos":I
    .restart local v4    # "charPos":I
    goto :goto_7

    .line 1851
    :cond_d
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "charPos":I
    .restart local v5    # "charPos":I
    aget-char v22, v18, v11

    aput-char v22, v3, v4

    move v4, v5

    .end local v5    # "charPos":I
    .restart local v4    # "charPos":I
    goto :goto_8

    .line 1859
    :cond_e
    const-string v22, "#error"

    goto/16 :goto_0

    .line 1880
    .end local v2    # "THEletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "k":I
    .end local v12    # "mult":J
    .end local v14    # "mult_order":Ljava/lang/String;
    .end local v15    # "multiplier":Lorg/apache/xml/utils/res/LongArrayWrapper;
    .end local v16    # "multiplierChar":C
    .end local v21    # "zeroChar":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .restart local v6    # "count":I
    :cond_f
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1882
    .local v20, "theletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v18, v0

    .line 1887
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_9
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_10

    .line 1889
    add-int/lit8 v22, v9, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v23

    aput-char v23, v18, v22

    .line 1887
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 1892
    :cond_10
    const/16 v22, 0x0

    add-int/lit8 v23, v9, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v23

    aput-char v23, v18, v22

    .line 1895
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v23

    div-int v11, v22, v23

    .line 1898
    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    rem-long p1, p1, v22

    .line 1901
    if-nez v11, :cond_12

    const-wide/16 v22, 0x0

    cmp-long v22, p1, v22

    if-nez v22, :cond_12

    .line 1918
    .end local v9    # "j":I
    .end local v20    # "theletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_11
    new-instance v22, Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 1904
    .restart local v9    # "j":I
    .restart local v20    # "theletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_12
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_13

    .line 1908
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "charPos":I
    .restart local v5    # "charPos":I
    aget-char v22, v18, v11

    aput-char v22, v3, v4

    .line 1913
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    .line 1914
    .end local v5    # "charPos":I
    .restart local v4    # "charPos":I
    goto/16 :goto_3

    .line 1911
    :cond_13
    const-string v22, "#error"

    goto/16 :goto_0
.end method
