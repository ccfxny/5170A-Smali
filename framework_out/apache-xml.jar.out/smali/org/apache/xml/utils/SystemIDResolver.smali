.class public Lorg/apache/xml/utils/SystemIDResolver;
.super Ljava/lang/Object;
.source "SystemIDResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x5

    .line 218
    move-object v0, p0

    .line 219
    .local v0, "absoluteURI":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsoluteURI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 222
    const-string v5, "file:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 230
    const-string v5, "///"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 234
    :cond_0
    const/16 v5, 0x3a

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 235
    .local v3, "secondColonIndex":I
    if-lez v3, :cond_1

    .line 237
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "localPath":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v3    # "secondColonIndex":I
    :cond_1
    invoke-static {v0}, Lorg/apache/xml/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 260
    .end local v4    # "str":Ljava/lang/String;
    .end local p0    # "systemId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object p0

    .line 243
    .restart local v1    # "localPath":Ljava/lang/String;
    .restart local v3    # "secondColonIndex":I
    .restart local v4    # "str":Ljava/lang/String;
    .restart local p0    # "systemId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "se":Ljava/lang/SecurityException;
    goto :goto_0

    .line 251
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v2    # "se":Ljava/lang/SecurityException;
    .end local v3    # "secondColonIndex":I
    :cond_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 260
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    :goto_0
    return-object v4

    .line 280
    :cond_0
    invoke-static {p1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "absoluteBase":Ljava/lang/String;
    const/4 v3, 0x0

    .line 284
    .local v3, "uri":Lorg/apache/xml/utils/URI;
    :try_start_0
    new-instance v1, Lorg/apache/xml/utils/URI;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/URI;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "baseURI":Lorg/apache/xml/utils/URI;
    new-instance v3, Lorg/apache/xml/utils/URI;

    .end local v3    # "uri":Lorg/apache/xml/utils/URI;
    invoke-direct {v3, v1, p0}, Lorg/apache/xml/utils/URI;-><init>(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xml/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .restart local v3    # "uri":Lorg/apache/xml/utils/URI;
    invoke-virtual {v3}, Lorg/apache/xml/utils/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xml/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 287
    .end local v1    # "baseURI":Lorg/apache/xml/utils/URI;
    .end local v3    # "uri":Lorg/apache/xml/utils/URI;
    :catch_0
    move-exception v2

    .line 289
    .local v2, "mue":Lorg/apache/xml/utils/URI$MalformedURIException;
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "localPath"    # Ljava/lang/String;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 58
    :cond_0
    const-string v3, ""

    .line 87
    :goto_0
    return-object v3

    .line 62
    :cond_1
    move-object v0, p0

    .line 63
    .local v0, "absolutePath":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    :try_start_0
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :cond_2
    if-eqz v0, :cond_4

    .line 79
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "urlString":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Lorg/apache/xml/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 70
    .end local v2    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "se":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 82
    .end local v1    # "se":Ljava/lang/SecurityException;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "urlString":Ljava/lang/String;
    goto :goto_1

    .line 85
    .end local v2    # "urlString":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "urlString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static isAbsolutePath(Ljava/lang/String;)Z
    .locals 2
    .param p0, "systemId"    # Ljava/lang/String;

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 153
    :goto_0
    return v1

    .line 152
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    goto :goto_0
.end method

.method public static isAbsoluteURI(Ljava/lang/String;)Z
    .locals 7
    .param p0, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isWindowsAbsolutePath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v5

    .line 124
    :cond_1
    const/16 v6, 0x23

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 125
    .local v1, "fragmentIndex":I
    const/16 v6, 0x3f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 126
    .local v3, "queryIndex":I
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 127
    .local v4, "slashIndex":I
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 130
    .local v0, "colonIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 131
    .local v2, "index":I
    if-lez v1, :cond_2

    .line 132
    move v2, v1

    .line 133
    :cond_2
    if-lez v3, :cond_3

    if-ge v3, v2, :cond_3

    .line 134
    move v2, v3

    .line 135
    :cond_3
    if-lez v4, :cond_4

    if-ge v4, v2, :cond_4

    .line 136
    move v2, v4

    .line 138
    :cond_4
    if-lez v0, :cond_0

    if-ge v0, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static isWindowsAbsolutePath(Ljava/lang/String;)Z
    .locals 5
    .param p0, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 165
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 172
    goto :goto_0
.end method

.method private static replaceChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 188
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 192
    .local v1, "currentChar":C
    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    .line 194
    const/16 v4, 0x25

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 195
    add-int/lit8 v4, v2, 0x1

    const-string v5, "20"

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    add-int/lit8 v3, v3, 0x2

    .line 197
    add-int/lit8 v2, v2, 0x2

    .line 188
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_1
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_0

    .line 202
    const/16 v4, 0x2f

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1

    .line 206
    .end local v1    # "currentChar":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
