.class public Lorg/apache/xalan/processor/XSLTAttributeDef;
.super Ljava/lang/Object;
.source "XSLTAttributeDef.java"


# static fields
.field static final ERROR:I = 0x1

.field static final FATAL:I = 0x0

.field static final S_FOREIGNATTR_SETTER:Ljava/lang/String; = "setForeignAttr"

.field static final T_AVT:I = 0x3

.field static final T_AVT_QNAME:I = 0x12

.field static final T_CDATA:I = 0x1

.field static final T_CHAR:I = 0x6

.field static final T_ENUM:I = 0xb

.field static final T_ENUM_OR_PQNAME:I = 0x10

.field static final T_EXPR:I = 0x5

.field static final T_NCNAME:I = 0x11

.field static final T_NMTOKEN:I = 0xd

.field static final T_NUMBER:I = 0x7

.field static final T_PATTERN:I = 0x4

.field static final T_PREFIXLIST:I = 0x14

.field static final T_PREFIX_URLLIST:I = 0xf

.field static final T_QNAME:I = 0x9

.field static final T_QNAMES:I = 0xa

.field static final T_QNAMES_RESOLVE_NULL:I = 0x13

.field static final T_SIMPLEPATTERNLIST:I = 0xc

.field static final T_STRINGLIST:I = 0xe

.field static final T_URL:I = 0x2

.field static final T_YESNO:I = 0x8

.field static final WARNING:I = 0x2

.field static final m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;


# instance fields
.field private m_default:Ljava/lang/String;

.field private m_enums:Lorg/apache/xml/utils/StringToIntTable;

.field m_errorType:I

.field private m_name:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_required:Z

.field m_setterString:Ljava/lang/String;

.field private m_supportsAVT:Z

.field private m_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 274
    new-instance v0, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v1, "*"

    const-string v2, "*"

    const/4 v3, 0x1

    const/4 v6, 0x2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    sput-object v0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "supportsAVT"    # Z
    .param p5, "errorType"    # I
    .param p6, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    .line 95
    iput p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    .line 97
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 98
    iput p5, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 99
    iput-object p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    .line 100
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "required"    # Z
    .param p5, "supportsAVT"    # Z
    .param p6, "errorType"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    .line 71
    iput p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    .line 72
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    .line 73
    iput-boolean p5, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 74
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 75
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "supportsAVT"    # Z
    .param p5, "prefixedQNameValAllowed"    # Z
    .param p6, "errorType"    # I
    .param p7, "k1"    # Ljava/lang/String;
    .param p8, "v1"    # I
    .param p9, "k2"    # Ljava/lang/String;
    .param p10, "v2"    # I

    .prologue
    const/4 v1, 0x2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput v1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    .line 123
    if-eqz p5, :cond_0

    const/16 v0, 0x10

    :goto_0
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    .line 124
    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    .line 125
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 126
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 127
    new-instance v0, Lorg/apache/xml/utils/StringToIntTable;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    .line 129
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 131
    return-void

    .line 123
    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "supportsAVT"    # Z
    .param p5, "prefixedQNameValAllowed"    # Z
    .param p6, "errorType"    # I
    .param p7, "k1"    # Ljava/lang/String;
    .param p8, "v1"    # I
    .param p9, "k2"    # Ljava/lang/String;
    .param p10, "v2"    # I
    .param p11, "k3"    # Ljava/lang/String;
    .param p12, "v3"    # I

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    .line 156
    if-eqz p5, :cond_0

    const/16 v0, 0x10

    :goto_0
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    .line 157
    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    .line 158
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 159
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 160
    new-instance v0, Lorg/apache/xml/utils/StringToIntTable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    .line 162
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 163
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 164
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p11, p12}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 165
    return-void

    .line 156
    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "supportsAVT"    # Z
    .param p5, "prefixedQNameValAllowed"    # Z
    .param p6, "errorType"    # I
    .param p7, "k1"    # Ljava/lang/String;
    .param p8, "v1"    # I
    .param p9, "k2"    # Ljava/lang/String;
    .param p10, "v2"    # I
    .param p11, "k3"    # Ljava/lang/String;
    .param p12, "v3"    # I
    .param p13, "k4"    # Ljava/lang/String;
    .param p14, "v4"    # I

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v2, 0x2

    iput v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 431
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    .line 192
    if-eqz p5, :cond_0

    const/16 v2, 0x10

    :goto_0
    iput v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    .line 193
    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    .line 194
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 195
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 196
    new-instance v2, Lorg/apache/xml/utils/StringToIntTable;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    .line 198
    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v2, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 199
    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v2, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 200
    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    move/from16 v0, p12

    invoke-virtual {v2, p11, v0}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 201
    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    move-object/from16 v0, p13

    move/from16 v1, p14

    invoke-virtual {v2, v0, v1}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 202
    return-void

    .line 192
    :cond_0
    const/16 v2, 0xb

    goto :goto_0
.end method

.method private getEnum(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringToIntTable;->get(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getEnumNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringToIntTable;->keys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getListOfEnums()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 1540
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1541
    .local v0, "enumNamesList":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnumNames()[Ljava/lang/String;

    move-result-object v1

    .line 1543
    .local v1, "enumValues":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1545
    if-lez v2, :cond_0

    .line 1547
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1549
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1551
    :cond_1
    return-object v0
.end method

.method private getPrimativeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1492
    instance-of v1, p1, Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_1

    .line 1493
    const-class v0, Lorg/apache/xpath/XPath;

    .line 1531
    :cond_0
    :goto_0
    return-object v0

    .line 1495
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1497
    .local v0, "cl":Ljava/lang/Class;
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_2

    .line 1499
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 1502
    :cond_2
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    .line 1504
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1506
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 1508
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1510
    :cond_4
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_5

    .line 1512
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1514
    :cond_5
    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_6

    .line 1516
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1518
    :cond_6
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_7

    .line 1520
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1522
    :cond_7
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_8

    .line 1524
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 1526
    :cond_8
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_0

    .line 1528
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0
.end method

.method private handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "exc"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1654
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getErrorType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1664
    :goto_0
    return-void

    .line 1658
    :pswitch_0
    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1661
    :pswitch_1
    invoke-virtual {p1, p2, p3}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1654
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processYESNO(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1359
    const-string v3, "yes"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "no"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1361
    const-string v3, "INVALID_BOOLEAN"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v1

    aput-object p5, v4, v0

    invoke-direct {p0, p1, v3, v4, v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    move-object v0, v2

    .line 1365
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/Boolean;

    const-string v3, "yes"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method getDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    return-object v0
.end method

.method getErrorType()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    return-object v0
.end method

.method getRequired()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    return v0
.end method

.method public getSetterMethodName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 446
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 448
    sget-object v4, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    if-ne v4, p0, :cond_0

    .line 450
    const-string v4, "setForeignAttr"

    .line 493
    :goto_0
    return-object v4

    .line 452
    :cond_0
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 454
    const-string v4, "addLiteralResultAttribute"

    iput-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 456
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    goto :goto_0

    .line 459
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 461
    .local v3, "outBuf":Ljava/lang/StringBuffer;
    const-string v4, "set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    const-string v5, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 466
    const-string v4, "Xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :cond_2
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 471
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 473
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 475
    .local v0, "c":C
    const/16 v4, 0x2d

    if-ne v4, v0, :cond_4

    .line 477
    add-int/lit8 v1, v1, 0x1

    .line 479
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 480
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 487
    :cond_3
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 482
    :cond_4
    if-nez v1, :cond_3

    .line 484
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_2

    .line 490
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 493
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "outBuf":Ljava/lang/StringBuffer;
    :cond_6
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    goto :goto_0
.end method

.method getSupportsAVT()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    return v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    return v0
.end method

.method processAVT(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/AVT;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 520
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    return-object v0

    .line 524
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v7

    .line 526
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method processAVT_QNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 13
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 974
    const/4 v8, 0x0

    .line 977
    .local v8, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_0
    new-instance v1, Lorg/apache/xalan/templates/AVT;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .end local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    .local v1, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 982
    const/16 v2, 0x3a

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 984
    .local v9, "indexOfNSSep":I
    if-ltz v9, :cond_1

    .line 986
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 987
    .local v11, "prefix":Ljava/lang/String;
    invoke-static {v11}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 989
    const-string v2, "INVALID_QNAME"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 990
    const/4 v1, 0x0

    .line 1011
    .end local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v9    # "indexOfNSSep":I
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 994
    .restart local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v9    # "indexOfNSSep":I
    :cond_1
    if-gez v9, :cond_3

    move-object/from16 v10, p5

    .line 997
    .local v10, "localName":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v10}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1000
    :cond_2
    const-string v2, "INVALID_QNAME"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1001
    const/4 v1, 0x0

    goto :goto_0

    .line 994
    .end local v10    # "localName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v9, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto :goto_1

    .line 1005
    .end local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v9    # "indexOfNSSep":I
    .restart local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v12

    move-object v1, v8

    .line 1008
    .end local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    .local v12, "te":Ljavax/xml/transform/TransformerException;
    :goto_2
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 1005
    .end local v12    # "te":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v12

    goto :goto_2
.end method

.method processCDATA(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-object v0

    .line 554
    :catch_0
    move-exception v7

    .line 556
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .end local v7    # "te":Ljavax/xml/transform/TransformerException;
    :cond_0
    move-object v0, p5

    .line 559
    goto :goto_0
.end method

.method processCHAR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 587
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 588
    const-string v1, "INVALID_TCHAR"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    const/4 v0, 0x0

    .line 604
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :cond_0
    :goto_0
    return-object v0

    .line 593
    :catch_0
    move-exception v7

    .line 595
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 598
    .end local v7    # "te":Ljavax/xml/transform/TransformerException;
    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 600
    const-string v1, "INVALID_TCHAR"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 601
    const/4 v0, 0x0

    goto :goto_0

    .line 604
    :cond_2
    new-instance v0, Ljava/lang/Character;

    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0
.end method

.method processENUM(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 12
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 627
    const/4 v8, 0x0

    .line 628
    .local v8, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    :try_start_0
    new-instance v1, Lorg/apache/xalan/templates/AVT;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    .local v1, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    .line 652
    :goto_0
    return-object v2

    .line 636
    .end local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v11

    move-object v1, v8

    .line 638
    .end local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    .local v11, "te":Ljavax/xml/transform/TransformerException;
    :goto_1
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .end local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v11    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    :cond_0
    move-object v1, v8

    .line 642
    .end local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnum(Ljava/lang/String;)I

    move-result v10

    .line 644
    .local v10, "retVal":I
    const/16 v2, -0x2710

    if-ne v10, v2, :cond_2

    .line 646
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v9

    .line 647
    .local v9, "enumNamesList":Ljava/lang/StringBuffer;
    const-string v2, "INVALID_ENUM"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 648
    const/4 v2, 0x0

    goto :goto_0

    .line 651
    .end local v9    # "enumNamesList":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    goto :goto_0

    .line 652
    :cond_3
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 636
    .end local v10    # "retVal":I
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method processENUM_OR_PQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 16
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 677
    const/4 v12, 0x0

    .line 679
    .local v12, "objToReturn":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 682
    :try_start_0
    new-instance v2, Lorg/apache/xalan/templates/AVT;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 683
    .local v2, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->isSimple()Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 736
    .end local v2    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v12    # "objToReturn":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 684
    .restart local v2    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v12    # "objToReturn":Ljava/lang/Object;
    :cond_0
    move-object v12, v2

    .line 693
    .end local v2    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v12    # "objToReturn":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnum(Ljava/lang/String;)I

    move-result v11

    .line 695
    .local v11, "key":I
    const/16 v3, -0x2710

    if-eq v11, v3, :cond_3

    .line 697
    if-nez v12, :cond_2

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v11}, Ljava/lang/Integer;-><init>(I)V

    :cond_2
    move-object v2, v12

    .line 736
    goto :goto_0

    .line 686
    .end local v11    # "key":I
    .restart local v12    # "objToReturn":Ljava/lang/Object;
    :catch_0
    move-exception v15

    .line 688
    .local v15, "te":Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 705
    .end local v12    # "objToReturn":Ljava/lang/Object;
    .end local v15    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v11    # "key":I
    :cond_3
    :try_start_1
    new-instance v13, Lorg/apache/xml/utils/QName;

    const/4 v3, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1, v3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V

    .line 706
    .local v13, "qname":Lorg/apache/xml/utils/QName;
    if-nez v12, :cond_4

    move-object v12, v13

    .line 708
    :cond_4
    invoke-virtual {v13}, Lorg/apache/xml/utils/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 709
    invoke-direct/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v9

    .line 711
    .local v9, "enumNamesList":Ljava/lang/StringBuffer;
    const-string v3, " <qname-but-not-ncname>"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 712
    const-string v3, "INVALID_ENUM"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 713
    const/4 v2, 0x0

    goto :goto_0

    .line 717
    .end local v9    # "enumNamesList":Ljava/lang/StringBuffer;
    .end local v13    # "qname":Lorg/apache/xml/utils/QName;
    :catch_1
    move-exception v10

    .line 719
    .local v10, "ie":Ljava/lang/IllegalArgumentException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v9

    .line 720
    .restart local v9    # "enumNamesList":Ljava/lang/StringBuffer;
    const-string v3, " <qname-but-not-ncname>"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 722
    const-string v3, "INVALID_ENUM"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v10}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 723
    const/4 v2, 0x0

    goto :goto_0

    .line 726
    .end local v9    # "enumNamesList":Ljava/lang/StringBuffer;
    .end local v10    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v14

    .line 728
    .local v14, "re":Ljava/lang/RuntimeException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v9

    .line 729
    .restart local v9    # "enumNamesList":Ljava/lang/StringBuffer;
    const-string v3, " <qname-but-not-ncname>"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    const-string v3, "INVALID_ENUM"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v14}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 732
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method processEXPR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 3
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 763
    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 765
    .local v0, "expr":Lorg/apache/xpath/XPath;
    return-object v0

    .line 767
    .end local v0    # "expr":Lorg/apache/xpath/XPath;
    :catch_0
    move-exception v1

    .line 769
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method processNCNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 9
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1035
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    const/4 v7, 0x0

    .line 1040
    .local v7, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    .end local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    const-string v1, "INVALID_NCNAME"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1046
    const/4 v0, 0x0

    .line 1062
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :cond_0
    :goto_0
    return-object v0

    .line 1050
    .restart local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v8

    move-object v0, v7

    .line 1053
    .end local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .local v8, "te":Ljavax/xml/transform/TransformerException;
    :goto_1
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 1057
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v8    # "te":Ljavax/xml/transform/TransformerException;
    :cond_1
    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1059
    const-string v1, "INVALID_NCNAME"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1060
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p5

    .line 1062
    goto :goto_0

    .line 1050
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method processNMTOKEN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 9
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 792
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 798
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 799
    const-string v1, "INVALID_NMTOKEN"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    .line 814
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :cond_0
    :goto_0
    return-object v0

    .line 804
    :catch_0
    move-exception v7

    .line 806
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 809
    .end local v7    # "te":Ljavax/xml/transform/TransformerException;
    :cond_1
    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 810
    const-string v1, "INVALID_NMTOKEN"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    aput-object p5, v2, v4

    invoke-direct {p0, p1, v1, v2, v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    move-object v0, v8

    .line 811
    goto :goto_0

    :cond_2
    move-object v0, p5

    .line 814
    goto :goto_0
.end method

.method processNUMBER(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 10
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    const/4 v7, 0x0

    .line 880
    .local v7, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 883
    .end local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    invoke-static {p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 909
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :cond_0
    :goto_0
    return-object v0

    .line 888
    .restart local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v9

    move-object v0, v7

    .line 890
    .end local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .local v9, "te":Ljavax/xml/transform/TransformerException;
    :goto_1
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 892
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v9    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_1
    move-exception v8

    move-object v0, v7

    .line 894
    .end local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    :goto_2
    const-string v1, "INVALID_NUMBER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    invoke-direct {p0, p1, v1, v2, v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 895
    const/4 v0, 0x0

    goto :goto_0

    .line 904
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_2
    invoke-static {p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 906
    :catch_2
    move-exception v8

    .line 908
    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    const-string v1, "INVALID_NUMBER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    invoke-direct {p0, p1, v1, v2, v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 909
    const/4 v0, 0x0

    goto :goto_0

    .line 892
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_3
    move-exception v8

    goto :goto_2

    .line 888
    :catch_4
    move-exception v9

    goto :goto_1
.end method

.method processPATTERN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 3
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 841
    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 843
    .local v0, "pattern":Lorg/apache/xpath/XPath;
    return-object v0

    .line 845
    .end local v0    # "pattern":Lorg/apache/xpath/XPath;
    :catch_0
    move-exception v1

    .line 847
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method processPREFIX_LIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .locals 10
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1271
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, " \t\n\r\u000c"

    invoke-direct {v4, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 1273
    .local v1, "nStrings":I
    new-instance v3, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v3, v1}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    .line 1275
    .local v3, "strings":Lorg/apache/xml/utils/StringVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1277
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1278
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1279
    .local v5, "url":Ljava/lang/String;
    const-string v6, "#default"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_1

    .line 1280
    :cond_0
    invoke-virtual {v3, v2}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    .line 1275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1282
    :cond_1
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "ER_CANT_RESOLVE_NSPREFIX"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1289
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method processPREFIX_URLLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .locals 10
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1233
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, " \t\n\r\u000c"

    invoke-direct {v4, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 1235
    .local v1, "nStrings":I
    new-instance v3, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v3, v1}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    .line 1237
    .local v3, "strings":Lorg/apache/xml/utils/StringVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1239
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1240
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1242
    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1243
    invoke-virtual {v3, v5}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    .line 1237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1245
    :cond_0
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "ER_CANT_RESOLVE_NSPREFIX"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1249
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method processQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 937
    :try_start_0
    new-instance v1, Lorg/apache/xml/utils/QName;

    const/4 v4, 0x1

    invoke-direct {v1, p5, p1, v4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 949
    :goto_0
    return-object v1

    .line 940
    :catch_0
    move-exception v0

    .line 943
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v4, "INVALID_QNAME"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v7

    aput-object p5, v5, v6

    invoke-direct {p0, p1, v4, v5, v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    move-object v1, v3

    .line 944
    goto :goto_0

    .line 946
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 948
    .local v2, "re":Ljava/lang/RuntimeException;
    const-string v4, "INVALID_QNAME"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v7

    aput-object p5, v5, v6

    invoke-direct {p0, p1, v4, v5, v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    move-object v1, v3

    .line 949
    goto :goto_0
.end method

.method processQNAMES(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 6
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1088
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " \t\n\r\u000c"

    invoke-direct {v3, p5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 1090
    .local v1, "nQNames":I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1092
    .local v2, "qnames":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1095
    new-instance v4, Lorg/apache/xml/utils/QName;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1092
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1098
    :cond_0
    return-object v2
.end method

.method final processQNAMESRNU(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1125
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, " \t\n\r\u000c"

    invoke-direct {v5, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 1127
    .local v2, "nQNames":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(I)V

    .line 1129
    .local v3, "qnames":Ljava/util/Vector;
    const-string v6, ""

    invoke-virtual {p1, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, "defaultURI":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1132
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1133
    .local v4, "tok":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 1134
    new-instance v6, Lorg/apache/xml/utils/QName;

    invoke-direct {v6, v0, v4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1130
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1136
    :cond_0
    new-instance v6, Lorg/apache/xml/utils/QName;

    invoke-direct {v6, v4, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 1139
    .end local v4    # "tok":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method processSIMPLEPATTERNLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/util/Vector;
    .locals 7
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1166
    :try_start_0
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, " \t\n\r\u000c"

    invoke-direct {v5, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 1168
    .local v1, "nPatterns":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1170
    .local v3, "patterns":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1172
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v2

    .line 1175
    .local v2, "pattern":Lorg/apache/xpath/XPath;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1180
    .end local v0    # "i":I
    .end local v1    # "nPatterns":I
    .end local v2    # "pattern":Lorg/apache/xpath/XPath;
    .end local v3    # "patterns":Ljava/util/Vector;
    .end local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v4

    .line 1182
    .local v4, "te":Ljavax/xml/transform/TransformerException;
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 1178
    .end local v4    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v0    # "i":I
    .restart local v1    # "nPatterns":I
    .restart local v3    # "patterns":Ljava/util/Vector;
    .restart local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    return-object v3
.end method

.method processSTRINGLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .locals 5
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 1202
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " \t\n\r\u000c"

    invoke-direct {v3, p5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 1204
    .local v1, "nStrings":I
    new-instance v2, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v2, v1}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    .line 1206
    .local v2, "strings":Lorg/apache/xml/utils/StringVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1208
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    .line 1206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    return-object v2
.end method

.method processURL(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1313
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1316
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :goto_0
    return-object v0

    .line 1326
    :catch_0
    move-exception v7

    .line 1328
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .end local v7    # "te":Ljavax/xml/transform/TransformerException;
    :cond_0
    move-object v0, p5

    .line 1335
    goto :goto_0
.end method

.method processValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 2
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1387
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getType()I

    move-result v1

    .line 1388
    .local v1, "type":I
    const/4 v0, 0x0

    .line 1390
    .local v0, "processedValue":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_0

    .line 1459
    .end local v0    # "processedValue":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 1393
    .restart local v0    # "processedValue":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processAVT(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/AVT;

    move-result-object v0

    .line 1394
    .local v0, "processedValue":Lorg/apache/xalan/templates/AVT;
    goto :goto_0

    .line 1396
    .local v0, "processedValue":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processCDATA(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1397
    goto :goto_0

    .line 1399
    :pswitch_2
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processCHAR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1400
    goto :goto_0

    .line 1402
    :pswitch_3
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processENUM(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1403
    goto :goto_0

    .line 1405
    :pswitch_4
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processEXPR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1406
    goto :goto_0

    .line 1408
    :pswitch_5
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNMTOKEN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1409
    goto :goto_0

    .line 1411
    :pswitch_6
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPATTERN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1412
    goto :goto_0

    .line 1414
    :pswitch_7
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNUMBER(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1415
    goto :goto_0

    .line 1417
    :pswitch_8
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1418
    goto :goto_0

    .line 1420
    :pswitch_9
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAMES(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 1421
    .local v0, "processedValue":Ljava/util/Vector;
    goto :goto_0

    .line 1423
    .local v0, "processedValue":Ljava/lang/Object;
    :pswitch_a
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAMESRNU(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 1424
    .local v0, "processedValue":Ljava/util/Vector;
    goto :goto_0

    .line 1426
    .local v0, "processedValue":Ljava/lang/Object;
    :pswitch_b
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processSIMPLEPATTERNLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/util/Vector;

    move-result-object v0

    .line 1428
    .local v0, "processedValue":Ljava/util/Vector;
    goto :goto_0

    .line 1430
    .local v0, "processedValue":Ljava/lang/Object;
    :pswitch_c
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processURL(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1431
    goto :goto_0

    .line 1433
    :pswitch_d
    invoke-direct/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processYESNO(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1434
    .local v0, "processedValue":Ljava/lang/Boolean;
    goto :goto_0

    .line 1436
    .local v0, "processedValue":Ljava/lang/Object;
    :pswitch_e
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processSTRINGLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    move-result-object v0

    .line 1437
    .local v0, "processedValue":Lorg/apache/xml/utils/StringVector;
    goto :goto_0

    .line 1439
    .local v0, "processedValue":Ljava/lang/Object;
    :pswitch_f
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPREFIX_URLLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    move-result-object v0

    .line 1441
    .local v0, "processedValue":Lorg/apache/xml/utils/StringVector;
    goto :goto_0

    .line 1443
    .local v0, "processedValue":Ljava/lang/Object;
    :pswitch_10
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processENUM_OR_PQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1444
    goto :goto_0

    .line 1446
    :pswitch_11
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNCNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1447
    goto :goto_0

    .line 1449
    :pswitch_12
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processAVT_QNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    .line 1450
    goto :goto_0

    .line 1452
    :pswitch_13
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPREFIX_LIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    move-result-object v0

    .line 1454
    .local v0, "processedValue":Lorg/apache/xml/utils/StringVector;
    goto :goto_0

    .line 1390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_d
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_b
        :pswitch_5
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 14
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "attrUri"    # Ljava/lang/String;
    .param p3, "attrLocalName"    # Ljava/lang/String;
    .param p4, "attrRawName"    # Ljava/lang/String;
    .param p5, "attrValue"    # Ljava/lang/String;
    .param p6, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1571
    const-string v10, "xmlns"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "xmlns:"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1572
    :cond_0
    const/4 v10, 0x1

    .line 1649
    :goto_0
    return v10

    .line 1574
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSetterMethodName()Ljava/lang/String;

    move-result-object v8

    .line 1578
    .local v8, "setterString":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1585
    :try_start_0
    const-string v10, "setForeignAttr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1588
    if-nez p2, :cond_2

    const-string p2, ""

    .line 1590
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 1591
    .local v7, "sclass":Ljava/lang/Class;
    const/4 v10, 0x4

    new-array v1, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v7, v1, v10

    const/4 v10, 0x1

    aput-object v7, v1, v10

    const/4 v10, 0x2

    aput-object v7, v1, v10

    const/4 v10, 0x3

    aput-object v7, v1, v10

    .line 1594
    .local v1, "argTypes":[Ljava/lang/Class;
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1596
    .local v5, "meth":Ljava/lang/reflect/Method;
    const/4 v10, 0x4

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v2, v10

    const/4 v10, 0x1

    aput-object p3, v2, v10

    const/4 v10, 0x2

    aput-object p4, v2, v10

    const/4 v10, 0x3

    aput-object p5, v2, v10

    .line 1626
    .end local v7    # "sclass":Ljava/lang/Class;
    .local v2, "args":[Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p6

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    .end local v1    # "argTypes":[Ljava/lang/Class;
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    :cond_3
    const/4 v10, 0x1

    goto :goto_0

    .line 1601
    :cond_4
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v9

    .line 1605
    .local v9, "value":Ljava/lang/Object;
    if-nez v9, :cond_5

    const/4 v10, 0x0

    goto :goto_0

    .line 1608
    :cond_5
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-direct {p0, v9}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getPrimativeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v1, v10
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1612
    .restart local v1    # "argTypes":[Ljava/lang/Class;
    :try_start_1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .line 1623
    .restart local v5    # "meth":Ljava/lang/reflect/Method;
    :goto_2
    const/4 v10, 0x1

    :try_start_2
    new-array v2, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v9, v2, v10

    .restart local v2    # "args":[Ljava/lang/Object;
    goto :goto_1

    .line 1614
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    .line 1616
    .local v6, "nsme":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1619
    .local v3, "cl":Ljava/lang/Class;
    const/4 v10, 0x0

    aput-object v3, v1, v10

    .line 1620
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    .restart local v5    # "meth":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 1628
    .end local v1    # "argTypes":[Ljava/lang/Class;
    .end local v3    # "cl":Ljava/lang/Class;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    .end local v6    # "nsme":Ljava/lang/NoSuchMethodException;
    .end local v9    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 1630
    .restart local v6    # "nsme":Ljava/lang/NoSuchMethodException;
    const-string v10, "setForeignAttr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1632
    const-string v10, "ER_FAILED_CALLING_METHOD"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-virtual {p1, v10, v11, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1633
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1636
    .end local v6    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 1638
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    const-string v10, "ER_FAILED_CALLING_METHOD"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-virtual {p1, v10, v11, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1639
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1641
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    .line 1643
    .local v6, "nsme":Ljava/lang/reflect/InvocationTargetException;
    const-string v10, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "name"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {p0, p1, v10, v11, v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1645
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 7
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1474
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1476
    return-void
.end method

.method setDefault(Ljava/lang/String;)V
    .locals 0
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    .line 384
    return-void
.end method
