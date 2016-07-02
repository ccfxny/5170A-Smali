.class final Lorg/apache/xml/serializer/CharInfo;
.super Ljava/lang/Object;
.source "CharInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/CharInfo$CharKey;
    }
.end annotation


# static fields
.field static final ASCII_MAX:I = 0x80

.field public static final HTML_ENTITIES_RESOURCE:Ljava/lang/String;

.field private static final LOW_ORDER_BITMASK:I = 0x1f

.field private static final SHIFT_PER_WORD:I = 0x5

.field static final S_CARRIAGERETURN:C = '\r'

.field static final S_GT:C = '>'

.field static final S_HORIZONAL_TAB:C = '\t'

.field static final S_LINEFEED:C = '\n'

.field static final S_LINE_SEPARATOR:C = '\u2028'

.field static final S_LT:C = '<'

.field static final S_NEL:C = '\u0085'

.field static final S_QUOTE:C = '\"'

.field static final S_SPACE:C = ' '

.field public static final XML_ENTITIES_RESOURCE:Ljava/lang/String;

.field private static m_getCharInfoCache:Ljava/util/Hashtable;


# instance fields
.field private final array_of_bits:[I

.field private firstWordNotUsed:I

.field private final m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

.field private m_charToString:Ljava/util/HashMap;

.field onlyQuotAmpLtGt:Z

.field private final shouldMapAttrChar_ASCII:[Z

.field private final shouldMapTextChar_ASCII:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".HTMLEntities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/CharInfo;->HTML_ENTITIES_RESOURCE:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".XMLEntities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/CharInfo;->XML_ENTITIES_RESOURCE:Ljava/lang/String;

    .line 565
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const v0, 0xffff

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/CharInfo;->createEmptySetOfIntegers(I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    .line 160
    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    .line 161
    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    .line 162
    new-instance v0, Lorg/apache/xml/serializer/CharInfo$CharKey;

    invoke-direct {v0}, Lorg/apache/xml/serializer/CharInfo$CharKey;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    .line 170
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 21
    .param p1, "entitiesResource"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "internal"    # Z

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Lorg/apache/xml/serializer/CharInfo;-><init>()V

    .line 177
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    .line 179
    const/4 v4, 0x0

    .line 180
    .local v4, "entities":Ljava/util/ResourceBundle;
    const/4 v11, 0x1

    .line 190
    .local v11, "noExtraEntities":Z
    if-eqz p3, :cond_0

    .line 194
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/util/PropertyResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 198
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 199
    invoke-virtual {v4}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v8

    .line 200
    .local v8, "keys":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 201
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 202
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 203
    .local v14, "value":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 204
    .local v2, "code":I
    int-to-char v15, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lorg/apache/xml/serializer/CharInfo;->defineEntity(Ljava/lang/String;C)Z

    move-result v5

    .line 205
    .local v5, "extra":Z
    if-eqz v5, :cond_1

    .line 206
    const/4 v11, 0x0

    goto :goto_1

    .line 209
    .end local v2    # "code":I
    .end local v5    # "extra":Z
    .end local v8    # "keys":Ljava/util/Enumeration;
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 214
    .local v7, "is":Ljava/io/InputStream;
    if-eqz p3, :cond_5

    .line 215
    :try_start_1
    const-class v15, Lorg/apache/xml/serializer/CharInfo;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 232
    :cond_3
    :goto_2
    if-nez v7, :cond_7

    .line 233
    new-instance v15, Ljava/lang/RuntimeException;

    sget-object v16, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v17, "ER_RESOURCE_COULD_NOT_FIND"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    const/16 v19, 0x1

    aput-object p1, v18, v19

    invoke-virtual/range {v16 .. v18}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :catch_0
    move-exception v3

    .line 302
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v15, Ljava/lang/RuntimeException;

    sget-object v16, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v17, "ER_RESOURCE_COULD_NOT_LOAD"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    aput-object p1, v18, v19

    const/16 v19, 0x3

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    if-eqz v7, :cond_4

    .line 312
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 313
    :cond_4
    :goto_3
    throw v15

    .line 217
    :cond_5
    :try_start_4
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 218
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-nez v1, :cond_6

    .line 219
    invoke-static/range {p1 .. p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 224
    :goto_4
    if-nez v7, :cond_3

    .line 226
    :try_start_5
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 227
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    goto :goto_2

    .line 221
    .end local v13    # "url":Ljava/net/URL;
    :cond_6
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    goto :goto_4

    .line 260
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    :cond_7
    :try_start_7
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v15, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v12, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 265
    .local v12, "reader":Ljava/io/BufferedReader;
    :goto_5
    :try_start_8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "line":Ljava/lang/String;
    :goto_6
    if-eqz v9, :cond_c

    .line 268
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x23

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 269
    :cond_8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 271
    goto :goto_6

    .line 261
    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 262
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 274
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v9    # "line":Ljava/lang/String;
    :cond_9
    const/16 v15, 0x20

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 276
    .local v6, "index":I
    const/4 v15, 0x1

    if-le v6, v15, :cond_b

    .line 277
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 279
    .restart local v10    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 281
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_b

    .line 282
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 283
    .restart local v14    # "value":Ljava/lang/String;
    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 285
    if-lez v6, :cond_a

    .line 286
    const/4 v15, 0x0

    invoke-virtual {v14, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 289
    :cond_a
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 291
    .restart local v2    # "code":I
    int-to-char v15, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lorg/apache/xml/serializer/CharInfo;->defineEntity(Ljava/lang/String;C)Z

    move-result v5

    .line 292
    .restart local v5    # "extra":Z
    if-eqz v5, :cond_b

    .line 293
    const/4 v11, 0x0

    .line 297
    .end local v2    # "code":I
    .end local v5    # "extra":Z
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_b
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 298
    goto :goto_6

    .line 300
    .end local v6    # "index":I
    :cond_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 310
    if-eqz v7, :cond_d

    .line 312
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 318
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    .line 329
    const-string v15, "xml"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 332
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    const/16 v16, 0x22

    const/16 v17, 0x0

    aput-boolean v17, v15, v16

    .line 335
    :cond_e
    const-string v15, "html"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    const/16 v16, 0x3c

    const/16 v17, 0x0

    aput-boolean v17, v15, v16

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    const/16 v16, 0x22

    const/16 v17, 0x0

    aput-boolean v17, v15, v16

    .line 344
    :cond_f
    return-void

    .line 195
    :catch_2
    move-exception v15

    goto/16 :goto_0

    .line 313
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v15

    goto :goto_7

    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v16

    goto/16 :goto_3

    .line 228
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    :catch_5
    move-exception v15

    goto/16 :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/xml/serializer/CharInfo$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/xml/serializer/CharInfo$1;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/CharInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static arrayIndex(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 574
    shr-int/lit8 v0, p0, 0x5

    return v0
.end method

.method private static bit(I)I
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 583
    const/4 v1, 0x1

    and-int/lit8 v2, p0, 0x1f

    shl-int v0, v1, v2

    .line 584
    .local v0, "ret":I
    return v0
.end method

.method private createEmptySetOfIntegers(I)[I
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 592
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    .line 594
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Lorg/apache/xml/serializer/CharInfo;->arrayIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 595
    .local v0, "arr":[I
    return-object v0
.end method

.method private defineEntity(Ljava/lang/String;C)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 366
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 367
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "entityString":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/serializer/CharInfo;->defineChar2StringMapping(Ljava/lang/String;C)Z

    move-result v1

    .line 372
    .local v1, "extra":Z
    return v1
.end method

.method private extraEntity(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "outputString"    # Ljava/lang/String;
    .param p2, "charToMap"    # I

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "extra":Z
    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    .line 662
    sparse-switch p2, :sswitch_data_0

    .line 681
    const/4 v0, 0x1

    .line 684
    :cond_0
    :goto_0
    return v0

    .line 665
    :sswitch_0
    const-string v1, "&quot;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    const/4 v0, 0x1

    goto :goto_0

    .line 669
    :sswitch_1
    const-string v1, "&amp;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    const/4 v0, 0x1

    goto :goto_0

    .line 673
    :sswitch_2
    const-string v1, "&lt;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :sswitch_3
    const-string v1, "&gt;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    const/4 v0, 0x1

    goto :goto_0

    .line 662
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method private final get(I)Z
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x1

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "in_the_set":Z
    shr-int/lit8 v1, p1, 0x5

    .line 635
    .local v1, "j":I
    iget v3, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    if-ge v1, v3, :cond_0

    .line 636
    iget-object v3, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    aget v3, v3, v1

    and-int/lit8 v4, p1, 0x1f

    shl-int v4, v2, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v0, v2

    .line 639
    :cond_0
    :goto_0
    return v0

    .line 636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;
    .locals 5
    .param p0, "entitiesFileName"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 491
    sget-object v3, Lorg/apache/xml/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v3, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/serializer/CharInfo;

    .line 492
    .local v1, "charInfo":Lorg/apache/xml/serializer/CharInfo;
    if-eqz v1, :cond_0

    .line 493
    invoke-static {v1}, Lorg/apache/xml/serializer/CharInfo;->mutableCopyOf(Lorg/apache/xml/serializer/CharInfo;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v3

    .line 526
    :goto_0
    return-object v3

    .line 498
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, p1, v3}, Lorg/apache/xml/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v1

    .line 502
    sget-object v3, Lorg/apache/xml/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v3, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-static {v1}, Lorg/apache/xml/serializer/CharInfo;->mutableCopyOf(Lorg/apache/xml/serializer/CharInfo;)Lorg/apache/xml/serializer/CharInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 504
    :catch_0
    move-exception v3

    .line 508
    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0, p1, v3}, Lorg/apache/xml/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 510
    :catch_1
    move-exception v3

    .line 514
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 515
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "absoluteEntitiesFileName":Ljava/lang/String;
    :goto_1
    invoke-static {p0, p1, v4}, Lorg/apache/xml/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v3

    goto :goto_0

    .line 519
    .end local v0    # "absoluteEntitiesFileName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-static {p0, v3}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .restart local v0    # "absoluteEntitiesFileName":Ljava/lang/String;
    goto :goto_1

    .line 521
    .end local v0    # "absoluteEntitiesFileName":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 522
    .local v2, "te":Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {v3, v2}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method private static getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;
    .locals 1
    .param p0, "entitiesFileName"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "internal"    # Z

    .prologue
    .line 462
    new-instance v0, Lorg/apache/xml/serializer/CharInfo$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xml/serializer/CharInfo$1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/CharInfo;

    return-object v0
.end method

.method private static mutableCopyOf(Lorg/apache/xml/serializer/CharInfo;)Lorg/apache/xml/serializer/CharInfo;
    .locals 5
    .param p0, "charInfo"    # Lorg/apache/xml/serializer/CharInfo;

    .prologue
    const/4 v4, 0x0

    .line 536
    new-instance v0, Lorg/apache/xml/serializer/CharInfo;

    invoke-direct {v0}, Lorg/apache/xml/serializer/CharInfo;-><init>()V

    .line 538
    .local v0, "copy":Lorg/apache/xml/serializer/CharInfo;
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    array-length v1, v2

    .line 539
    .local v1, "max":I
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    iget-object v3, v0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 541
    iget v2, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    iput v2, v0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    .line 543
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    array-length v1, v2

    .line 544
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    iget-object v3, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 546
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    array-length v1, v2

    .line 547
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    iget-object v3, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 551
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, v0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    .line 553
    iget-boolean v2, p0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    iput-boolean v2, v0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    .line 555
    return-object v0
.end method

.method private final set(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->setASCIItextDirty(I)V

    .line 607
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->setASCIIattrDirty(I)V

    .line 609
    shr-int/lit8 v0, p1, 0x5

    .line 610
    .local v0, "j":I
    add-int/lit8 v1, v0, 0x1

    .line 612
    .local v1, "k":I
    iget v2, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    if-ge v2, v1, :cond_0

    .line 613
    iput v1, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    .line 615
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    and-int/lit8 v5, p1, 0x1f

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 616
    return-void
.end method

.method private setASCIIattrDirty(I)V
    .locals 2
    .param p1, "j"    # I

    .prologue
    .line 709
    if-ltz p1, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 711
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 713
    :cond_0
    return-void
.end method

.method private setASCIItextDirty(I)V
    .locals 2
    .param p1, "j"    # I

    .prologue
    .line 695
    if-ltz p1, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 697
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 699
    :cond_0
    return-void
.end method


# virtual methods
.method defineChar2StringMapping(Ljava/lang/String;C)Z
    .locals 3
    .param p1, "outputString"    # Ljava/lang/String;
    .param p2, "inputChar"    # C

    .prologue
    .line 731
    new-instance v0, Lorg/apache/xml/serializer/CharInfo$CharKey;

    invoke-direct {v0, p2}, Lorg/apache/xml/serializer/CharInfo$CharKey;-><init>(C)V

    .line 732
    .local v0, "character":Lorg/apache/xml/serializer/CharInfo$CharKey;
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-direct {p0, p2}, Lorg/apache/xml/serializer/CharInfo;->set(I)V

    .line 735
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/CharInfo;->extraEntity(Ljava/lang/String;I)Z

    move-result v1

    .line 736
    .local v1, "extraMapping":Z
    return v1
.end method

.method getOutputStringForChar(C)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/CharInfo$CharKey;->setChar(C)V

    .line 409
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/xml/serializer/CharInfo;->m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method final shouldMapAttrChar(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 426
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    aget-boolean v0, v0, p1

    .line 431
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method final shouldMapTextChar(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 449
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 450
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    aget-boolean v0, v0, p1

    .line 454
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->get(I)Z

    move-result v0

    goto :goto_0
.end method
