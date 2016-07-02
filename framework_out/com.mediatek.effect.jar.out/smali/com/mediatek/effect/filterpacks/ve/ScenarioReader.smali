.class public Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;
.super Ljava/lang/Object;
.source "ScenarioReader.java"


# static fields
.field public static tmp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static dump(Lcom/mediatek/effect/filterpacks/ve/VideoScenario;)Ljava/lang/String;
    .locals 9
    .param p0, "scenario"    # Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    .prologue
    .line 349
    const-string v6, ""

    .line 350
    .local v6, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 352
    .local v4, "mKeys":[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 353
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 354
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 355
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 356
    .local v5, "obj":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "len$":I
    .end local v4    # "mKeys":[Ljava/lang/Object;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v6
.end method

.method public static getScenario(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-static {p0, p1, v0, v0}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->getScenario(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-result-object v0

    return-object v0
.end method

.method public static getScenario(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .locals 46
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Ljava/lang/String;
    .param p2, "object1"    # Ljava/lang/Object;
    .param p3, "object2"    # Ljava/lang/Object;

    .prologue
    .line 73
    new-instance v20, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    invoke-direct/range {v20 .. v20}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;-><init>()V

    .line 74
    .local v20, "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    const-wide/16 v34, 0x0

    .line 76
    .local v34, "theEndTime":J
    const-string v3, "xml"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 v19, 0x0

    .line 79
    .local v19, "isObjTheSame":Z
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_0

    .line 80
    const/16 v19, 0x1

    .line 83
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    .line 86
    .local v14, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    new-instance v23, Ljava/io/StringBufferInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    .line 88
    .local v23, "myXML":Ljava/io/StringBufferInputStream;
    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v13

    .line 89
    .local v13, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v12

    .line 91
    .local v12, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v12}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V

    .line 92
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Root element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    const-string v3, "size"

    invoke-interface {v12, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 95
    .local v32, "sizeLst":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 97
    .local v31, "sizeElement":Lorg/w3c/dom/Element;
    const/16 v25, 0x0

    .line 99
    .local v25, "orientation":I
    if-eqz v31, :cond_f

    .line 100
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "owidth"

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "oheight"

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "orientation"

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    const-string v3, "video_ow"

    const-string v5, "owidth"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v3, "video_oh"

    const-string v5, "oheight"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    .line 108
    :try_start_1
    const-string v3, "orientation"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v25

    .line 112
    :goto_0
    :try_start_2
    const-string v3, "orientation"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v3, "video"

    invoke-interface {v12, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v42

    .line 120
    .local v42, "videoLst":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v41

    check-cast v41, Lorg/w3c/dom/Element;

    .line 121
    .local v41, "videoElement":Lorg/w3c/dom/Element;
    if-eqz v41, :cond_10

    .line 122
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    const-string v3, "video1"

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/4 v3, 0x1

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v41

    .end local v41    # "videoElement":Lorg/w3c/dom/Element;
    check-cast v41, Lorg/w3c/dom/Element;

    .line 126
    .restart local v41    # "videoElement":Lorg/w3c/dom/Element;
    if-eqz v41, :cond_1

    .line 127
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    const-string v3, "video2"

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v3, "video2_init_offset"

    const-string v5, "init_offset"

    move-object/from16 v0, v41

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1
    const-string v3, "edge"

    invoke-interface {v12, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 138
    .local v17, "edgeLst":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 139
    .local v16, "edgeElement":Lorg/w3c/dom/Element;
    if-eqz v16, :cond_11

    .line 140
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "edge:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    const-string v3, "edge"

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v3, "outputvideo"

    invoke-interface {v12, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 149
    .local v27, "outputvideoLst":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/Element;

    .line 150
    .local v26, "outputvideoElement":Lorg/w3c/dom/Element;
    if-eqz v26, :cond_1b

    .line 151
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outputvideo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fps:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "fps"

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bitrate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bitrate"

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    const-string v3, "outputvideo"

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v3, "outputvideo_fps"

    const-string v5, "fps"

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v3, "outputvideo_bitrate"

    const-string v5, "bitrate"

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v3, "livephoto"

    const-string v5, "livephoto"

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v3, "truncate"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 161
    .local v39, "truncate":Ljava/lang/String;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1b

    .line 163
    const-string v3, "truncate"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 169
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "object1":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video_ow"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video_oh"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5, v6}, Lcom/mediatek/effect/filterpacks/MyUtility;->getCutBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 172
    .local v37, "tmp1":Landroid/graphics/Bitmap;
    move-object/from16 p2, v37

    .line 175
    .end local v37    # "tmp1":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_12

    .end local p3    # "object2":Ljava/lang/Object;
    .local p2, "object2":Ljava/lang/Object;
    move-object/from16 p3, p2

    .end local p2    # "object2":Ljava/lang/Object;
    .restart local p3    # "object2":Ljava/lang/Object;
    move-object/from16 v22, p2

    .line 199
    .end local v39    # "truncate":Ljava/lang/String;
    .end local p3    # "object2":Ljava/lang/Object;
    :goto_1
    const-string v3, "videoevent"

    invoke-interface {v12, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 200
    .local v24, "nodeLst":Lorg/w3c/dom/NodeList;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Information of all Video-Event"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    const-wide/16 v34, 0x0

    .line 204
    const/16 v28, 0x0

    .local v28, "s":I
    :goto_2
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_14

    .line 205
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 206
    .local v18, "fstNode":Lorg/w3c/dom/Node;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    .line 207
    move-object/from16 v0, v18

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v40, v0

    .line 209
    .local v40, "veElement":Lorg/w3c/dom/Element;
    if-eqz v40, :cond_e

    .line 210
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "type"

    move-object/from16 v0, v40

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    move-object/from16 v0, v40

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "start"

    move-object/from16 v0, v40

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "end"

    move-object/from16 v0, v40

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    const-string v3, "showtime"

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 214
    .local v30, "showTimeElementList":Lorg/w3c/dom/NodeList;
    const-string v3, "thumbnail"

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 215
    .local v36, "thumbnailElementList":Lorg/w3c/dom/NodeList;
    const-string v3, "background"

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 216
    .local v9, "backgroundElementList":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    check-cast v29, Lorg/w3c/dom/Element;

    .line 217
    .local v29, "showTimeElement":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/Element;

    .line 218
    .local v33, "thumbnailElement":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 220
    .local v8, "backgroundElement":Lorg/w3c/dom/Element;
    if-eqz v29, :cond_3

    .line 221
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  showtime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "related_start"

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "~ ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "length"

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    :cond_3
    if-eqz v33, :cond_4

    .line 224
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  thumbnail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " m:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "move"

    move-object/from16 v0, v33

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    :cond_4
    if-eqz v8, :cond_5

    .line 229
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  background:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " still:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "still"

    invoke-interface {v8, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fade_in:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "fade_in"

    invoke-interface {v8, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    :cond_5
    const/4 v2, 0x0

    .line 235
    .local v2, "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    const-string v3, "still"

    const-string v5, "type"

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 236
    new-instance v2, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;

    .end local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    const-string v3, "name"

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "start"

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "end"

    move-object/from16 v0, v40

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;-><init>(Ljava/lang/String;JJ)V

    .line 258
    .restart local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    :cond_6
    :goto_3
    if-eqz v2, :cond_e

    .line 259
    if-eqz v29, :cond_7

    .line 260
    const-string v3, "related_start"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v3, "length"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    move-wide/from16 v0, v44

    invoke-virtual {v2, v6, v7, v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->setDurationEffectRelatedTime(JJ)V

    .line 265
    :cond_7
    if-eqz v33, :cond_9

    .line 266
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "myBitmap":Ljava/lang/String;
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 268
    const-string v5, "object1"

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .local v22, "myBitmap":Ljava/lang/Object;
    move-object/from16 v4, v22

    .line 274
    .end local v4    # "myBitmap":Ljava/lang/String;
    .end local v22    # "myBitmap":Ljava/lang/Object;
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "move"

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fade_out"

    move-object/from16 v0, v33

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->putThumbnail(Landroid/content/res/Resources;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_9
    if-eqz v8, :cond_b

    .line 281
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 282
    .restart local v4    # "myBitmap":Ljava/lang/String;
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 283
    const-string v5, "object1"

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .restart local v22    # "myBitmap":Ljava/lang/Object;
    move-object/from16 v4, v22

    .line 289
    .end local v4    # "myBitmap":Ljava/lang/String;
    .end local v22    # "myBitmap":Ljava/lang/Object;
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "still"

    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fade_in"

    invoke-interface {v8, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "init_offset"

    invoke-interface {v8, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->putBackground(Landroid/content/res/Resources;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_b
    if-eqz v16, :cond_d

    .line 297
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 298
    .restart local v4    # "myBitmap":Ljava/lang/String;
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 299
    const-string v5, "object1"

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .restart local v22    # "myBitmap":Ljava/lang/Object;
    move-object/from16 v4, v22

    .line 305
    .end local v4    # "myBitmap":Ljava/lang/String;
    .end local v22    # "myBitmap":Ljava/lang/Object;
    :cond_c
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->putEdge(Landroid/content/res/Resources;Ljava/lang/Object;)V

    .line 308
    :cond_d
    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->getEndTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v34, v6

    if-gez v3, :cond_e

    .line 311
    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->getEndTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 204
    .end local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    .end local v8    # "backgroundElement":Lorg/w3c/dom/Element;
    .end local v9    # "backgroundElementList":Lorg/w3c/dom/NodeList;
    .end local v29    # "showTimeElement":Lorg/w3c/dom/Element;
    .end local v30    # "showTimeElementList":Lorg/w3c/dom/NodeList;
    .end local v33    # "thumbnailElement":Lorg/w3c/dom/Element;
    .end local v36    # "thumbnailElementList":Lorg/w3c/dom/NodeList;
    .end local v40    # "veElement":Lorg/w3c/dom/Element;
    :cond_e
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 109
    .end local v16    # "edgeElement":Lorg/w3c/dom/Element;
    .end local v17    # "edgeLst":Lorg/w3c/dom/NodeList;
    .end local v18    # "fstNode":Lorg/w3c/dom/Node;
    .end local v24    # "nodeLst":Lorg/w3c/dom/NodeList;
    .end local v26    # "outputvideoElement":Lorg/w3c/dom/Element;
    .end local v27    # "outputvideoLst":Lorg/w3c/dom/NodeList;
    .end local v28    # "s":I
    .end local v41    # "videoElement":Lorg/w3c/dom/Element;
    .end local v42    # "videoLst":Lorg/w3c/dom/NodeList;
    .local p2, "object1":Ljava/lang/Object;
    .restart local p3    # "object2":Ljava/lang/Object;
    :catch_0
    move-exception v15

    .line 110
    .local v15, "e":Ljava/lang/NumberFormatException;
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 114
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->clear()V

    .line 115
    const/16 v20, 0x0

    move-object/from16 v21, v20

    .line 343
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v20    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .end local v23    # "myXML":Ljava/io/StringBufferInputStream;
    .end local v25    # "orientation":I
    .end local v31    # "sizeElement":Lorg/w3c/dom/Element;
    .end local v32    # "sizeLst":Lorg/w3c/dom/NodeList;
    .end local p2    # "object1":Ljava/lang/Object;
    .end local p3    # "object2":Ljava/lang/Object;
    .local v21, "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    :goto_7
    return-object v21

    .line 132
    .end local v21    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v20    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .restart local v23    # "myXML":Ljava/io/StringBufferInputStream;
    .restart local v25    # "orientation":I
    .restart local v31    # "sizeElement":Lorg/w3c/dom/Element;
    .restart local v32    # "sizeLst":Lorg/w3c/dom/NodeList;
    .restart local v41    # "videoElement":Lorg/w3c/dom/Element;
    .restart local v42    # "videoLst":Lorg/w3c/dom/NodeList;
    .restart local p2    # "object1":Ljava/lang/Object;
    .restart local p3    # "object2":Ljava/lang/Object;
    :cond_10
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->clear()V

    .line 133
    const/16 v20, 0x0

    move-object/from16 v21, v20

    .line 134
    .end local v20    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .restart local v21    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    goto :goto_7

    .line 143
    .end local v21    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .restart local v16    # "edgeElement":Lorg/w3c/dom/Element;
    .restart local v17    # "edgeLst":Lorg/w3c/dom/NodeList;
    .restart local v20    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    :cond_11
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->clear()V

    .line 144
    const/16 v20, 0x0

    move-object/from16 v21, v20

    .line 145
    .end local v20    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .restart local v21    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    goto :goto_7

    .line 177
    .end local v21    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .end local p2    # "object1":Ljava/lang/Object;
    .restart local v20    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .restart local v26    # "outputvideoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "outputvideoLst":Lorg/w3c/dom/NodeList;
    .restart local v39    # "truncate":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p3

    instance-of v3, v0, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1a

    .line 178
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "object2":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video_ow"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video_oh"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v3, v5, v6}, Lcom/mediatek/effect/filterpacks/MyUtility;->getCutBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 181
    .local v38, "tmp2":Landroid/graphics/Bitmap;
    move-object/from16 p3, v38

    .local p3, "object2":Landroid/graphics/Bitmap;
    move-object/from16 v22, p2

    goto/16 :goto_1

    .line 239
    .end local v38    # "tmp2":Landroid/graphics/Bitmap;
    .end local v39    # "truncate":Ljava/lang/String;
    .end local p3    # "object2":Landroid/graphics/Bitmap;
    .restart local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    .restart local v8    # "backgroundElement":Lorg/w3c/dom/Element;
    .restart local v9    # "backgroundElementList":Lorg/w3c/dom/NodeList;
    .restart local v18    # "fstNode":Lorg/w3c/dom/Node;
    .restart local v24    # "nodeLst":Lorg/w3c/dom/NodeList;
    .restart local v28    # "s":I
    .restart local v29    # "showTimeElement":Lorg/w3c/dom/Element;
    .restart local v30    # "showTimeElementList":Lorg/w3c/dom/NodeList;
    .restart local v33    # "thumbnailElement":Lorg/w3c/dom/Element;
    .restart local v36    # "thumbnailElementList":Lorg/w3c/dom/NodeList;
    .restart local v40    # "veElement":Lorg/w3c/dom/Element;
    :cond_13
    const-string v3, "overlay"

    const-string v5, "type"

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 240
    new-instance v2, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;

    .end local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    const-string v3, "name"

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "start"

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "end"

    move-object/from16 v0, v40

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;-><init>(Ljava/lang/String;JJ)V

    .line 243
    .restart local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    const-string v3, "scale"

    const-string v5, "scale"

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v3, "x"

    const-string v5, "x"

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v3, "y"

    const-string v5, "y"

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_3

    .line 318
    .end local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    .end local v8    # "backgroundElement":Lorg/w3c/dom/Element;
    .end local v9    # "backgroundElementList":Lorg/w3c/dom/NodeList;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v16    # "edgeElement":Lorg/w3c/dom/Element;
    .end local v17    # "edgeLst":Lorg/w3c/dom/NodeList;
    .end local v18    # "fstNode":Lorg/w3c/dom/Node;
    .end local v23    # "myXML":Ljava/io/StringBufferInputStream;
    .end local v24    # "nodeLst":Lorg/w3c/dom/NodeList;
    .end local v25    # "orientation":I
    .end local v26    # "outputvideoElement":Lorg/w3c/dom/Element;
    .end local v27    # "outputvideoLst":Lorg/w3c/dom/NodeList;
    .end local v28    # "s":I
    .end local v29    # "showTimeElement":Lorg/w3c/dom/Element;
    .end local v30    # "showTimeElementList":Lorg/w3c/dom/NodeList;
    .end local v31    # "sizeElement":Lorg/w3c/dom/Element;
    .end local v32    # "sizeLst":Lorg/w3c/dom/NodeList;
    .end local v33    # "thumbnailElement":Lorg/w3c/dom/Element;
    .end local v36    # "thumbnailElementList":Lorg/w3c/dom/NodeList;
    .end local v40    # "veElement":Lorg/w3c/dom/Element;
    .end local v41    # "videoElement":Lorg/w3c/dom/Element;
    .end local v42    # "videoLst":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v15

    .line 319
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->clear()V

    .line 320
    const/16 v20, 0x0

    .line 321
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    .line 336
    .end local v15    # "e":Ljava/io/IOException;
    :cond_14
    :goto_8
    if-eqz v20, :cond_15

    .line 337
    const-string v3, "THEENDTIME"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_15
    invoke-static/range {v20 .. v20}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->dump(Lcom/mediatek/effect/filterpacks/ve/VideoScenario;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->tmp:Ljava/lang/String;

    .line 341
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v5, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->tmp:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move-object/from16 v21, v20

    .line 343
    .end local v20    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .restart local v21    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    goto/16 :goto_7

    .line 246
    .end local v21    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .restart local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    .restart local v8    # "backgroundElement":Lorg/w3c/dom/Element;
    .restart local v9    # "backgroundElementList":Lorg/w3c/dom/NodeList;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "edgeElement":Lorg/w3c/dom/Element;
    .restart local v17    # "edgeLst":Lorg/w3c/dom/NodeList;
    .restart local v18    # "fstNode":Lorg/w3c/dom/Node;
    .restart local v20    # "mScenario":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .restart local v23    # "myXML":Ljava/io/StringBufferInputStream;
    .restart local v24    # "nodeLst":Lorg/w3c/dom/NodeList;
    .restart local v25    # "orientation":I
    .restart local v26    # "outputvideoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "outputvideoLst":Lorg/w3c/dom/NodeList;
    .restart local v28    # "s":I
    .restart local v29    # "showTimeElement":Lorg/w3c/dom/Element;
    .restart local v30    # "showTimeElementList":Lorg/w3c/dom/NodeList;
    .restart local v31    # "sizeElement":Lorg/w3c/dom/Element;
    .restart local v32    # "sizeLst":Lorg/w3c/dom/NodeList;
    .restart local v33    # "thumbnailElement":Lorg/w3c/dom/Element;
    .restart local v36    # "thumbnailElementList":Lorg/w3c/dom/NodeList;
    .restart local v40    # "veElement":Lorg/w3c/dom/Element;
    .restart local v41    # "videoElement":Lorg/w3c/dom/Element;
    .restart local v42    # "videoLst":Lorg/w3c/dom/NodeList;
    :cond_16
    :try_start_3
    const-string v3, "camera"

    const-string v5, "type"

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 247
    const-string v3, "camera_photo"

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 248
    .local v11, "cameraElementList":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 249
    .local v10, "cameraElement":Lorg/w3c/dom/Element;
    if-eqz v10, :cond_6

    .line 250
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  camera_photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "related_start"

    invoke-interface {v10, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    new-instance v2, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;

    .end local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    const-string v3, "name"

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "start"

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "end"

    move-object/from16 v0, v40

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;-><init>(Ljava/lang/String;JJ)V

    .line 254
    .restart local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    const-string v3, "camera_photo"

    const-string v5, "related_start"

    invoke-interface {v10, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    .line 322
    .end local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    .end local v8    # "backgroundElement":Lorg/w3c/dom/Element;
    .end local v9    # "backgroundElementList":Lorg/w3c/dom/NodeList;
    .end local v10    # "cameraElement":Lorg/w3c/dom/Element;
    .end local v11    # "cameraElementList":Lorg/w3c/dom/NodeList;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v16    # "edgeElement":Lorg/w3c/dom/Element;
    .end local v17    # "edgeLst":Lorg/w3c/dom/NodeList;
    .end local v18    # "fstNode":Lorg/w3c/dom/Node;
    .end local v23    # "myXML":Ljava/io/StringBufferInputStream;
    .end local v24    # "nodeLst":Lorg/w3c/dom/NodeList;
    .end local v25    # "orientation":I
    .end local v26    # "outputvideoElement":Lorg/w3c/dom/Element;
    .end local v27    # "outputvideoLst":Lorg/w3c/dom/NodeList;
    .end local v28    # "s":I
    .end local v29    # "showTimeElement":Lorg/w3c/dom/Element;
    .end local v30    # "showTimeElementList":Lorg/w3c/dom/NodeList;
    .end local v31    # "sizeElement":Lorg/w3c/dom/Element;
    .end local v32    # "sizeLst":Lorg/w3c/dom/NodeList;
    .end local v33    # "thumbnailElement":Lorg/w3c/dom/Element;
    .end local v36    # "thumbnailElementList":Lorg/w3c/dom/NodeList;
    .end local v40    # "veElement":Lorg/w3c/dom/Element;
    .end local v41    # "videoElement":Lorg/w3c/dom/Element;
    .end local v42    # "videoLst":Lorg/w3c/dom/NodeList;
    :catch_2
    move-exception v15

    .line 323
    .local v15, "e":Lorg/xml/sax/SAXException;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->clear()V

    .line 324
    const/16 v20, 0x0

    .line 325
    invoke-virtual {v15}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_8

    .line 270
    .end local v15    # "e":Lorg/xml/sax/SAXException;
    .restart local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    .restart local v4    # "myBitmap":Ljava/lang/String;
    .restart local v8    # "backgroundElement":Lorg/w3c/dom/Element;
    .restart local v9    # "backgroundElementList":Lorg/w3c/dom/NodeList;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "edgeElement":Lorg/w3c/dom/Element;
    .restart local v17    # "edgeLst":Lorg/w3c/dom/NodeList;
    .restart local v18    # "fstNode":Lorg/w3c/dom/Node;
    .restart local v23    # "myXML":Ljava/io/StringBufferInputStream;
    .restart local v24    # "nodeLst":Lorg/w3c/dom/NodeList;
    .restart local v25    # "orientation":I
    .restart local v26    # "outputvideoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "outputvideoLst":Lorg/w3c/dom/NodeList;
    .restart local v28    # "s":I
    .restart local v29    # "showTimeElement":Lorg/w3c/dom/Element;
    .restart local v30    # "showTimeElementList":Lorg/w3c/dom/NodeList;
    .restart local v31    # "sizeElement":Lorg/w3c/dom/Element;
    .restart local v32    # "sizeLst":Lorg/w3c/dom/NodeList;
    .restart local v33    # "thumbnailElement":Lorg/w3c/dom/Element;
    .restart local v36    # "thumbnailElementList":Lorg/w3c/dom/NodeList;
    .restart local v40    # "veElement":Lorg/w3c/dom/Element;
    .restart local v41    # "videoElement":Lorg/w3c/dom/Element;
    .restart local v42    # "videoLst":Lorg/w3c/dom/NodeList;
    :cond_17
    :try_start_4
    const-string v5, "object2"

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .local p3, "myBitmap":Ljava/lang/Object;
    move-object/from16 v4, p3

    .line 271
    .end local p3    # "myBitmap":Ljava/lang/Object;
    .local v4, "myBitmap":Ljava/lang/Object;
    goto/16 :goto_4

    .line 285
    .local v4, "myBitmap":Ljava/lang/String;
    :cond_18
    const-string v5, "object2"

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .restart local p3    # "myBitmap":Ljava/lang/Object;
    move-object/from16 v4, p3

    .line 286
    .end local p3    # "myBitmap":Ljava/lang/Object;
    .local v4, "myBitmap":Ljava/lang/Object;
    goto/16 :goto_5

    .line 301
    .local v4, "myBitmap":Ljava/lang/String;
    :cond_19
    const-string v5, "object2"

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    if-eqz v3, :cond_c

    .restart local p3    # "myBitmap":Ljava/lang/Object;
    move-object/from16 v4, p3

    .line 302
    .end local p3    # "myBitmap":Ljava/lang/Object;
    .local v4, "myBitmap":Ljava/lang/Object;
    goto/16 :goto_6

    .line 326
    .end local v2    # "ve":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    .end local v4    # "myBitmap":Ljava/lang/Object;
    .end local v8    # "backgroundElement":Lorg/w3c/dom/Element;
    .end local v9    # "backgroundElementList":Lorg/w3c/dom/NodeList;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v16    # "edgeElement":Lorg/w3c/dom/Element;
    .end local v17    # "edgeLst":Lorg/w3c/dom/NodeList;
    .end local v18    # "fstNode":Lorg/w3c/dom/Node;
    .end local v23    # "myXML":Ljava/io/StringBufferInputStream;
    .end local v24    # "nodeLst":Lorg/w3c/dom/NodeList;
    .end local v25    # "orientation":I
    .end local v26    # "outputvideoElement":Lorg/w3c/dom/Element;
    .end local v27    # "outputvideoLst":Lorg/w3c/dom/NodeList;
    .end local v28    # "s":I
    .end local v29    # "showTimeElement":Lorg/w3c/dom/Element;
    .end local v30    # "showTimeElementList":Lorg/w3c/dom/NodeList;
    .end local v31    # "sizeElement":Lorg/w3c/dom/Element;
    .end local v32    # "sizeLst":Lorg/w3c/dom/NodeList;
    .end local v33    # "thumbnailElement":Lorg/w3c/dom/Element;
    .end local v36    # "thumbnailElementList":Lorg/w3c/dom/NodeList;
    .end local v40    # "veElement":Lorg/w3c/dom/Element;
    .end local v41    # "videoElement":Lorg/w3c/dom/Element;
    .end local v42    # "videoLst":Lorg/w3c/dom/NodeList;
    :catch_3
    move-exception v15

    .line 327
    .local v15, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->clear()V

    .line 328
    const/16 v20, 0x0

    .line 329
    invoke-virtual {v15}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_8

    .line 330
    .end local v15    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_4
    move-exception v15

    .line 331
    .local v15, "e":Ljava/lang/NullPointerException;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->clear()V

    .line 332
    const/16 v20, 0x0

    .line 333
    invoke-virtual {v15}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_8

    .end local v15    # "e":Ljava/lang/NullPointerException;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "edgeElement":Lorg/w3c/dom/Element;
    .restart local v17    # "edgeLst":Lorg/w3c/dom/NodeList;
    .restart local v23    # "myXML":Ljava/io/StringBufferInputStream;
    .restart local v25    # "orientation":I
    .restart local v26    # "outputvideoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "outputvideoLst":Lorg/w3c/dom/NodeList;
    .restart local v31    # "sizeElement":Lorg/w3c/dom/Element;
    .restart local v32    # "sizeLst":Lorg/w3c/dom/NodeList;
    .restart local v39    # "truncate":Ljava/lang/String;
    .restart local v41    # "videoElement":Lorg/w3c/dom/Element;
    .restart local v42    # "videoLst":Lorg/w3c/dom/NodeList;
    .local p3, "object2":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v22, p2

    goto/16 :goto_1

    .end local v39    # "truncate":Ljava/lang/String;
    .restart local p2    # "object1":Ljava/lang/Object;
    :cond_1b
    move-object/from16 v22, p2

    goto/16 :goto_1
.end method

.method private static parseLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method
