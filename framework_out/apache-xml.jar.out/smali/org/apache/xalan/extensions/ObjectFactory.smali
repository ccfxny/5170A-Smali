.class Lorg/apache/xalan/extensions/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xalan/extensions/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 67
    .local v5, "security":Ljava/lang/SecurityManager;
    if-eqz v5, :cond_1

    .line 68
    :try_start_0
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 69
    .local v2, "lastDot":I
    move-object v3, p0

    .line 70
    .local v3, "packageName":Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 71
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v2    # "lastDot":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 88
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 110
    .local v4, "providerClass":Ljava/lang/Class;
    :goto_0
    return-object v4

    .line 73
    .end local v4    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/SecurityException;
    throw v1

    .line 91
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 92
    .end local v4    # "providerClass":Ljava/lang/Class;
    :catch_1
    move-exception v6

    .line 93
    .local v6, "x":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_5

    .line 95
    const-class v7, Lorg/apache/xalan/extensions/ObjectFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 96
    .local v0, "current":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    .line 97
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 98
    .end local v4    # "providerClass":Ljava/lang/Class;
    :cond_3
    if-eq p1, v0, :cond_4

    .line 99
    move-object p1, v0

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 102
    .end local v4    # "providerClass":Ljava/lang/Class;
    :cond_4
    throw v6

    .line 105
    .end local v0    # "current":Ljava/lang/ClassLoader;
    :cond_5
    throw v6
.end method
