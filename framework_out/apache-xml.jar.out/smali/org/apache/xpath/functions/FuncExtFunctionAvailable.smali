.class public Lorg/apache/xpath/functions/FuncExtFunctionAvailable;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncExtFunctionAvailable.java"


# static fields
.field static final serialVersionUID:J = 0x4709ae7fafe83ef1L


# instance fields
.field private transient m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 8
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v7, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v7, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "fullName":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 58
    .local v3, "indexOfNSSep":I
    if-gez v3, :cond_1

    .line 60
    const-string v6, ""

    .line 61
    .local v6, "prefix":Ljava/lang/String;
    const-string v5, "http://www.w3.org/1999/XSL/Transform"

    .line 62
    .local v5, "namespace":Ljava/lang/String;
    move-object v4, v2

    .line 73
    .local v4, "methName":Ljava/lang/String;
    :goto_0
    const-string v7, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 77
    :try_start_0
    iget-object v7, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    if-nez v7, :cond_0

    new-instance v7, Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v7}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    iput-object v7, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 78
    :cond_0
    iget-object v7, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v7, v4}, Lorg/apache/xpath/compiler/FunctionTable;->functionAvailable(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v4    # "methName":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 66
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 67
    .restart local v6    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .restart local v5    # "namespace":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 69
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_1

    .line 70
    :cond_2
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "methName":Ljava/lang/String;
    goto :goto_0

    .line 78
    :cond_3
    :try_start_1
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_1

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/ExtensionsProvider;

    .line 89
    .local v1, "extProvider":Lorg/apache/xpath/ExtensionsProvider;
    invoke-interface {v1, v5, v4}, Lorg/apache/xpath/ExtensionsProvider;->functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_1

    :cond_5
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_1
.end method

.method public setFunctionTable(Lorg/apache/xpath/compiler/FunctionTable;)V
    .locals 0
    .param p1, "aTable"    # Lorg/apache/xpath/compiler/FunctionTable;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 103
    return-void
.end method
