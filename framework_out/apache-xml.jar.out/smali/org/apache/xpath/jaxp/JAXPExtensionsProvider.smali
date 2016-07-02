.class public Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
.super Ljava/lang/Object;
.source "JAXPExtensionsProvider.java"

# interfaces
.implements Lorg/apache/xpath/ExtensionsProvider;


# instance fields
.field private extensionInvocationDisabled:Z

.field private final resolver:Ljavax/xml/xpath/XPathFunctionResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 1
    .param p1, "resolver"    # Ljavax/xml/xpath/XPathFunctionResolver;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    .line 50
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 51
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .locals 1
    .param p1, "resolver"    # Ljavax/xml/xpath/XPathFunctionResolver;
    .param p2, "featureSecureProcessing"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    .line 56
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 57
    iput-boolean p2, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    .line 58
    return-void
.end method


# virtual methods
.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "elemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .param p3, "argVec"    # Ljava/util/Vector;
    .param p4, "methodKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    :try_start_0
    const-string v12, "ER_ARG_CANNOT_BE_NULL"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "Function Name"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "fmsg":Ljava/lang/String;
    new-instance v12, Ljava/lang/NullPointerException;

    invoke-direct {v12, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    .end local v6    # "fmsg":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 150
    .local v10, "xfe":Ljavax/xml/xpath/XPathFunctionException;
    new-instance v12, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v12, v10}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v12

    .line 111
    .end local v10    # "xfe":Ljavax/xml/xpath/XPathFunctionException;
    :cond_0
    :try_start_1
    new-instance v8, Ljavax/xml/namespace/QName;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v8, "myQName":Ljavax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    if-eqz v12, :cond_1

    .line 117
    const-string v12, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .restart local v6    # "fmsg":Ljava/lang/String;
    new-instance v12, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {v12, v6}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .end local v6    # "fmsg":Ljava/lang/String;
    .end local v8    # "myQName":Ljavax/xml/namespace/QName;
    :catch_1
    move-exception v5

    .line 152
    .local v5, "e":Ljava/lang/Exception;
    new-instance v12, Ljavax/xml/transform/TransformerException;

    invoke-direct {v12, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 125
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "myQName":Ljavax/xml/namespace/QName;
    :cond_1
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v4

    .line 127
    .local v4, "arity":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    invoke-interface {v12, v8, v4}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object v11

    .line 131
    .local v11, "xpathFunction":Ljavax/xml/xpath/XPathFunction;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v2, "argList":Ljava/util/ArrayList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_4

    .line 133
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 136
    .local v3, "argument":Ljava/lang/Object;
    instance-of v12, v3, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v12, :cond_2

    .line 137
    check-cast v3, Lorg/apache/xpath/objects/XNodeSet;

    .end local v3    # "argument":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 132
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 138
    .restart local v3    # "argument":Ljava/lang/Object;
    :cond_2
    instance-of v12, v3, Lorg/apache/xpath/objects/XObject;

    if-eqz v12, :cond_3

    .line 139
    check-cast v3, Lorg/apache/xpath/objects/XObject;

    .end local v3    # "argument":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v9

    .line 140
    .local v9, "passedArgument":Ljava/lang/Object;
    invoke-virtual {v2, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 142
    .end local v9    # "passedArgument":Ljava/lang/Object;
    .restart local v3    # "argument":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v2, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 146
    .end local v3    # "argument":Ljava/lang/Object;
    :cond_4
    invoke-interface {v11, v2}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;
    :try_end_2
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    return-object v12
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .locals 17
    .param p1, "extFunction"    # Lorg/apache/xpath/functions/FuncExtFunction;
    .param p2, "argVec"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "namespace":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "functionName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getArgCount()I

    move-result v3

    .line 167
    .local v3, "arity":I
    new-instance v8, Ljavax/xml/namespace/QName;

    invoke-direct {v8, v9, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v8, "myQName":Ljavax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    if-eqz v13, :cond_0

    .line 174
    const-string v13, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "fmsg":Ljava/lang/String;
    new-instance v13, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {v13, v5}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .end local v3    # "arity":I
    .end local v5    # "fmsg":Ljava/lang/String;
    .end local v6    # "functionName":Ljava/lang/String;
    .end local v8    # "myQName":Ljavax/xml/namespace/QName;
    .end local v9    # "namespace":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 202
    .local v11, "xfe":Ljavax/xml/xpath/XPathFunctionException;
    new-instance v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v13, v11}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 179
    .end local v11    # "xfe":Ljavax/xml/xpath/XPathFunctionException;
    .restart local v3    # "arity":I
    .restart local v6    # "functionName":Ljava/lang/String;
    .restart local v8    # "myQName":Ljavax/xml/namespace/QName;
    .restart local v9    # "namespace":Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    invoke-interface {v13, v8, v3}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object v12

    .line 182
    .local v12, "xpathFunction":Ljavax/xml/xpath/XPathFunction;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v1, "argList":Ljava/util/ArrayList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_3

    .line 184
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 187
    .local v2, "argument":Ljava/lang/Object;
    instance-of v13, v2, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v13, :cond_1

    .line 188
    check-cast v2, Lorg/apache/xpath/objects/XNodeSet;

    .end local v2    # "argument":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-virtual {v1, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 189
    .restart local v2    # "argument":Ljava/lang/Object;
    :cond_1
    instance-of v13, v2, Lorg/apache/xpath/objects/XObject;

    if-eqz v13, :cond_2

    .line 190
    check-cast v2, Lorg/apache/xpath/objects/XObject;

    .end local v2    # "argument":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v10

    .line 191
    .local v10, "passedArgument":Ljava/lang/Object;
    invoke-virtual {v1, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 203
    .end local v1    # "argList":Ljava/util/ArrayList;
    .end local v3    # "arity":I
    .end local v6    # "functionName":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "myQName":Ljavax/xml/namespace/QName;
    .end local v9    # "namespace":Ljava/lang/String;
    .end local v10    # "passedArgument":Ljava/lang/Object;
    .end local v12    # "xpathFunction":Ljavax/xml/xpath/XPathFunction;
    :catch_1
    move-exception v4

    .line 204
    .local v4, "e":Ljava/lang/Exception;
    new-instance v13, Ljavax/xml/transform/TransformerException;

    invoke-direct {v13, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 193
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "argList":Ljava/util/ArrayList;
    .restart local v2    # "argument":Ljava/lang/Object;
    .restart local v3    # "arity":I
    .restart local v6    # "functionName":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "myQName":Ljavax/xml/namespace/QName;
    .restart local v9    # "namespace":Ljava/lang/String;
    .restart local v12    # "xpathFunction":Ljavax/xml/xpath/XPathFunction;
    :cond_2
    :try_start_2
    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 197
    .end local v2    # "argument":Ljava/lang/Object;
    :cond_3
    invoke-interface {v12, v1}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;
    :try_end_2
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    return-object v13
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    if-nez p2, :cond_1

    .line 68
    :try_start_0
    const-string v5, "ER_ARG_CANNOT_BE_NULL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Function Name"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "fmsg":Ljava/lang/String;
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 81
    .end local v1    # "fmsg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 82
    :cond_0
    :goto_0
    return v4

    .line 74
    :cond_1
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v2, "myQName":Ljavax/xml/namespace/QName;
    iget-object v6, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 77
    .local v3, "xpathFunction":Ljavax/xml/xpath/XPathFunction;
    if-eqz v3, :cond_0

    move v4, v5

    .line 80
    goto :goto_0
.end method
