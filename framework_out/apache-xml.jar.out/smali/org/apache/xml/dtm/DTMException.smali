.class public Lorg/apache/xml/dtm/DTMException;
.super Ljava/lang/RuntimeException;
.source "DTMException.java"


# static fields
.field static final serialVersionUID:J = -0xac366a4e17910ceL


# instance fields
.field containedException:Ljava/lang/Throwable;

.field locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 140
    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "message":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 191
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 207
    iput-object p3, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 208
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 209
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 154
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLocationAsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 256
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    if-eqz v4, :cond_3

    .line 257
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    .local v2, "sbuffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "systemID":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    .line 260
    .local v1, "line":I
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    .line 262
    .local v0, "column":I
    if-eqz v3, :cond_0

    .line 263
    const-string v4, "; SystemID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    :cond_0
    if-eqz v1, :cond_1

    .line 268
    const-string v4, "; Line#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 272
    :cond_1
    if-eqz v0, :cond_2

    .line 273
    const-string v4, "; Column#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 277
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    .end local v0    # "column":I
    .end local v1    # "line":I
    .end local v2    # "sbuffer":Ljava/lang/StringBuffer;
    .end local v3    # "systemID":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLocator()Ljavax/xml/transform/SourceLocator;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-object v0
.end method

.method public getMessageAndLocation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 217
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v3, "sbuffer":Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_0
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    if-eqz v5, :cond_3

    .line 225
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "systemID":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    .line 227
    .local v1, "line":I
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    .line 229
    .local v0, "column":I
    if-eqz v4, :cond_1

    .line 230
    const-string v5, "; SystemID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :cond_1
    if-eqz v1, :cond_2

    .line 235
    const-string v5, "; Line#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 239
    :cond_2
    if-eqz v0, :cond_3

    .line 240
    const-string v5, "; Column#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 245
    .end local v0    # "column":I
    .end local v1    # "line":I
    .end local v4    # "systemID":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ER_CANNOT_OVERWRITE_CAUSE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_0
    if-ne p1, p0, :cond_1

    .line 121
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_SELF_CAUSATION_NOT_PERMITTED"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit p0

    return-object p0
.end method

.method public printStackTrace()V
    .locals 3

    .prologue
    .line 289
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/DTMException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 290
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 299
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/DTMException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 300
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 16
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance p1, Ljava/io/PrintWriter;

    .end local p1    # "s":Ljava/io/PrintWriter;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-direct {v0, v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 315
    .restart local p1    # "s":Ljava/io/PrintWriter;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/DTMException;->getLocationAsString()Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "locInfo":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 318
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_1
    invoke-super/range {p0 .. p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 324
    .end local v7    # "locInfo":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 326
    .local v5, "isJdk14OrHigher":Z
    :try_start_1
    const-class v12, Ljava/lang/Throwable;

    const-string v13, "getCause"

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    const/4 v15, 0x0

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    .line 327
    const/4 v5, 0x1

    .line 335
    :goto_1
    if-nez v5, :cond_3

    .line 336
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/DTMException;->getException()Ljava/lang/Throwable;

    move-result-object v2

    .line 338
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/16 v11, 0xa

    if-ge v3, v11, :cond_3

    if-eqz v2, :cond_3

    .line 339
    const-string v11, "---------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    :try_start_2
    instance-of v11, v2, Lorg/apache/xml/dtm/DTMException;

    if-eqz v11, :cond_2

    .line 343
    move-object v0, v2

    check-cast v0, Lorg/apache/xml/dtm/DTMException;

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xml/dtm/DTMException;->getLocationAsString()Ljava/lang/String;

    move-result-object v7

    .line 347
    .restart local v7    # "locInfo":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 348
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    .end local v7    # "locInfo":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 358
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "getException"

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    const/4 v15, 0x0

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 362
    .local v8, "meth":Ljava/lang/reflect/Method;
    if-eqz v8, :cond_4

    .line 363
    move-object v10, v2

    .line 365
    .local v10, "prev":Ljava/lang/Throwable;
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v12, v13

    invoke-virtual {v8, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "exception":Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 367
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-ne v10, v2, :cond_5

    .line 382
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v8    # "meth":Ljava/lang/reflect/Method;
    .end local v10    # "prev":Ljava/lang/Throwable;
    :cond_3
    return-void

    .line 353
    .restart local v2    # "exception":Ljava/lang/Throwable;
    .restart local v3    # "i":I
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Throwable;
    const-string v11, "Could not print stack trace..."

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 371
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v8    # "meth":Ljava/lang/reflect/Method;
    :cond_4
    const/4 v2, 0x0

    .line 338
    .end local v8    # "meth":Ljava/lang/reflect/Method;
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 373
    .end local v2    # "exception":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 374
    .local v6, "ite":Ljava/lang/reflect/InvocationTargetException;
    const/4 v2, 0x0

    .line 379
    .restart local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_4

    .line 375
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v6    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v4

    .line 376
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    const/4 v2, 0x0

    .line 379
    .restart local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_4

    .line 377
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v9

    .line 378
    .local v9, "nsme":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    .restart local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_4

    .line 328
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v9    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v11

    goto :goto_1

    .line 322
    .end local v5    # "isJdk14OrHigher":Z
    :catch_5
    move-exception v11

    goto :goto_0
.end method

.method public setLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0
    .param p1, "location"    # Ljavax/xml/transform/SourceLocator;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 62
    return-void
.end method
