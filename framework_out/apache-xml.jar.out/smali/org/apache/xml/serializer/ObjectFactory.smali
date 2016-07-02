.class Lorg/apache/xml/serializer/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xalan.properties"

.field private static final SERVICES_PATH:Ljava/lang/String; = "META-INF/services/"

.field private static fLastModified:J

.field private static fXalanProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 76
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/xml/serializer/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "propertiesFilename"    # Ljava/lang/String;
    .param p2, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    .local v0, "factoryClass":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 137
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 142
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 143
    .local v1, "instance":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created new instance of factory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-object v1

    .line 145
    .end local v1    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 146
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider for factory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 386
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v3

    .line 399
    .local v3, "ss":Lorg/apache/xml/serializer/SecuritySupport;
    invoke-virtual {v3}, Lorg/apache/xml/serializer/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 400
    .local v1, "context":Ljava/lang/ClassLoader;
    invoke-virtual {v3}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 402
    .local v4, "system":Ljava/lang/ClassLoader;
    move-object v0, v4

    .line 404
    .local v0, "chain":Ljava/lang/ClassLoader;
    :goto_0
    if-ne v1, v0, :cond_2

    .line 413
    const-class v5, Lorg/apache/xml/serializer/ObjectFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 415
    .local v2, "current":Ljava/lang/ClassLoader;
    move-object v0, v4

    .line 417
    :goto_1
    if-ne v2, v0, :cond_0

    .line 445
    .end local v2    # "current":Ljava/lang/ClassLoader;
    .end local v4    # "system":Ljava/lang/ClassLoader;
    :goto_2
    return-object v4

    .line 422
    .restart local v2    # "current":Ljava/lang/ClassLoader;
    .restart local v4    # "system":Ljava/lang/ClassLoader;
    :cond_0
    if-nez v0, :cond_1

    move-object v4, v2

    .line 430
    goto :goto_2

    .line 425
    :cond_1
    invoke-virtual {v3, v0}, Lorg/apache/xml/serializer/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 433
    .end local v2    # "current":Ljava/lang/ClassLoader;
    :cond_2
    if-nez v0, :cond_3

    move-object v4, v1

    .line 445
    goto :goto_2

    .line 440
    :cond_3
    invoke-virtual {v3, v0}, Lorg/apache/xml/serializer/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method private static findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "factoryId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 536
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v7

    .line 537
    .local v7, "ss":Lorg/apache/xml/serializer/SecuritySupport;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "META-INF/services/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 538
    .local v6, "serviceId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 541
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 543
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v7, v0, v6}, Lorg/apache/xml/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 546
    if-nez v4, :cond_0

    .line 547
    const-class v10, Lorg/apache/xml/serializer/ObjectFactory;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 548
    .local v1, "current":Ljava/lang/ClassLoader;
    if-eq v0, v1, :cond_0

    .line 549
    move-object v0, v1

    .line 550
    invoke-virtual {v7, v0, v6}, Lorg/apache/xml/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 554
    .end local v1    # "current":Ljava/lang/ClassLoader;
    :cond_0
    if-nez v4, :cond_1

    move-object v3, v9

    .line 616
    :goto_0
    return-object v3

    .line 559
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found jar resource="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " using ClassLoader: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 580
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v4, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .local v5, "rd":Ljava/io/BufferedReader;
    :goto_1
    const/4 v3, 0x0

    .line 589
    .local v3, "factoryClassName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 597
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 603
    :goto_2
    if-eqz v3, :cond_2

    const-string v10, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 605
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found in resource, value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    .end local v3    # "factoryClassName":Ljava/lang/String;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 582
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v5    # "rd":Ljava/io/BufferedReader;
    goto :goto_1

    .line 590
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "factoryClassName":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 597
    .local v8, "x":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    move-object v3, v9

    .line 600
    goto :goto_0

    .line 595
    .end local v8    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 597
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 600
    :goto_4
    throw v9

    :cond_2
    move-object v3, v9

    .line 616
    goto :goto_0

    .line 600
    :catch_2
    move-exception v10

    goto :goto_2

    .restart local v8    # "x":Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_3

    .end local v8    # "x":Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto :goto_4
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 481
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 483
    .local v5, "security":Ljava/lang/SecurityManager;
    if-eqz v5, :cond_1

    .line 484
    :try_start_0
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 485
    .local v2, "lastDot":I
    move-object v3, p0

    .line 486
    .local v3, "packageName":Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 487
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v2    # "lastDot":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 504
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 526
    .local v4, "providerClass":Ljava/lang/Class;
    :goto_0
    return-object v4

    .line 489
    .end local v4    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/SecurityException;
    throw v1

    .line 507
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 508
    .end local v4    # "providerClass":Ljava/lang/Class;
    :catch_1
    move-exception v6

    .line 509
    .local v6, "x":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_5

    .line 511
    const-class v7, Lorg/apache/xml/serializer/ObjectFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 512
    .local v0, "current":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    .line 513
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 514
    .end local v4    # "providerClass":Ljava/lang/Class;
    :cond_3
    if-eq p1, v0, :cond_4

    .line 515
    move-object p1, v0

    .line 516
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 518
    .end local v4    # "providerClass":Ljava/lang/Class;
    :cond_4
    throw v6

    .line 521
    .end local v0    # "current":Ljava/lang/ClassLoader;
    :cond_5
    throw v6
.end method

.method static lookUpFactoryClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-static {p0, v0, v0}, Lorg/apache/xml/serializer/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "propertiesFilename"    # Ljava/lang/String;
    .param p2, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/ObjectFactory;->lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "factoryClassName":Ljava/lang/String;
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 212
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 213
    move-object v1, p2

    .line 218
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v1, v0, v4}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    .line 221
    .local v2, "providerClass":Ljava/lang/Class;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created new instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using ClassLoader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    return-object v2

    .line 224
    .end local v2    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 225
    .local v3, "x":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 227
    .end local v3    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 228
    .local v3, "x":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be instantiated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method static lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "propertiesFilename"    # Ljava/lang/String;
    .param p2, "fallbackClassName"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v11

    .line 264
    .local v11, "ss":Lorg/apache/xml/serializer/SecuritySupport;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, "systemProp":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 266
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "found system property, value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v12    # "systemProp":Ljava/lang/String;
    :goto_0
    return-object v12

    .line 269
    :catch_0
    move-exception v14

    .line 275
    :cond_0
    const/4 v3, 0x0

    .line 278
    .local v3, "factoryClassName":Ljava/lang/String;
    if-nez p1, :cond_8

    .line 279
    const/4 v7, 0x0

    .line 280
    .local v7, "propertiesFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 282
    .local v9, "propertiesFileExists":Z
    :try_start_1
    const-string v14, "java.home"

    invoke-virtual {v11, v14}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "javah":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "xalan.properties"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 285
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    .end local v7    # "propertiesFile":Ljava/io/File;
    .local v8, "propertiesFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v11, v8}, Lorg/apache/xml/serializer/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_a

    move-result v9

    move-object v7, v8

    .line 293
    .end local v5    # "javah":Ljava/lang/String;
    .end local v8    # "propertiesFile":Ljava/io/File;
    .restart local v7    # "propertiesFile":Ljava/io/File;
    :goto_1
    const-class v15, Lorg/apache/xml/serializer/ObjectFactory;

    monitor-enter v15

    .line 294
    const/4 v6, 0x0

    .line 295
    .local v6, "loadProperties":Z
    const/4 v4, 0x0

    .line 298
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_3
    sget-wide v16, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-ltz v14, :cond_6

    .line 299
    if-eqz v9, :cond_5

    sget-wide v16, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    invoke-virtual {v11, v7}, Lorg/apache/xml/serializer/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v18

    sput-wide v18, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    cmp-long v14, v16, v18

    if-gez v14, :cond_5

    .line 301
    const/4 v6, 0x1

    .line 316
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 319
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    sput-object v14, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 320
    invoke-virtual {v11, v7}, Lorg/apache/xml/serializer/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 321
    sget-object v14, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    invoke-virtual {v14, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    :cond_2
    if-eqz v4, :cond_3

    .line 334
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 340
    :cond_3
    :goto_3
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 341
    sget-object v14, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    if-eqz v14, :cond_4

    .line 342
    sget-object v14, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    .end local v6    # "loadProperties":Z
    .end local v7    # "propertiesFile":Ljava/io/File;
    .end local v9    # "propertiesFileExists":Z
    :cond_4
    :goto_4
    if-eqz v3, :cond_a

    .line 368
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "found in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    move-object v12, v3

    .line 370
    goto/16 :goto_0

    .line 287
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "propertiesFile":Ljava/io/File;
    .restart local v9    # "propertiesFileExists":Z
    :catch_1
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/SecurityException;
    :goto_5
    const-wide/16 v14, -0x1

    sput-wide v14, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    .line 290
    const/4 v14, 0x0

    sput-object v14, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    goto :goto_1

    .line 304
    .end local v2    # "e":Ljava/lang/SecurityException;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "loadProperties":Z
    :cond_5
    if-nez v9, :cond_1

    .line 305
    const-wide/16 v16, -0x1

    :try_start_6
    sput-wide v16, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J

    .line 306
    const/4 v14, 0x0

    sput-object v14, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 323
    :catch_2
    move-exception v13

    .line 324
    .local v13, "x":Ljava/lang/Exception;
    const/4 v14, 0x0

    :try_start_7
    sput-object v14, Lorg/apache/xml/serializer/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 325
    const-wide/16 v16, -0x1

    sput-wide v16, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 332
    if-eqz v4, :cond_3

    .line 334
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 337
    :catch_3
    move-exception v14

    goto :goto_3

    .line 311
    .end local v13    # "x":Ljava/lang/Exception;
    :cond_6
    if-eqz v9, :cond_1

    .line 312
    const/4 v6, 0x1

    .line 313
    :try_start_9
    invoke-virtual {v11, v7}, Lorg/apache/xml/serializer/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v16

    sput-wide v16, Lorg/apache/xml/serializer/ObjectFactory;->fLastModified:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 332
    :catchall_0
    move-exception v14

    if-eqz v4, :cond_7

    .line 334
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 337
    :cond_7
    :goto_6
    :try_start_b
    throw v14

    .line 340
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v14

    .line 345
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "loadProperties":Z
    .end local v7    # "propertiesFile":Ljava/io/File;
    .end local v9    # "propertiesFileExists":Z
    :cond_8
    const/4 v4, 0x0

    .line 347
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :try_start_c
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lorg/apache/xml/serializer/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 348
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 349
    .local v10, "props":Ljava/util/Properties;
    invoke-virtual {v10, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 350
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v3

    .line 358
    if-eqz v4, :cond_4

    .line 360
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_4

    .line 363
    :catch_4
    move-exception v14

    goto :goto_4

    .line 351
    .end local v10    # "props":Ljava/util/Properties;
    :catch_5
    move-exception v14

    .line 358
    if-eqz v4, :cond_4

    .line 360
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_4

    .line 363
    :catch_6
    move-exception v14

    goto/16 :goto_4

    .line 358
    :catchall_2
    move-exception v14

    if-eqz v4, :cond_9

    .line 360
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 363
    :cond_9
    :goto_7
    throw v14

    .line 374
    :cond_a
    invoke-static/range {p0 .. p0}, Lorg/apache/xml/serializer/ObjectFactory;->findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 337
    .restart local v6    # "loadProperties":Z
    .restart local v7    # "propertiesFile":Ljava/io/File;
    .restart local v9    # "propertiesFileExists":Z
    :catch_7
    move-exception v14

    goto/16 :goto_3

    :catch_8
    move-exception v16

    goto :goto_6

    .line 363
    .end local v6    # "loadProperties":Z
    .end local v7    # "propertiesFile":Ljava/io/File;
    .end local v9    # "propertiesFileExists":Z
    :catch_9
    move-exception v15

    goto :goto_7

    .line 287
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "javah":Ljava/lang/String;
    .restart local v8    # "propertiesFile":Ljava/io/File;
    .restart local v9    # "propertiesFileExists":Z
    :catch_a
    move-exception v2

    move-object v7, v8

    .end local v8    # "propertiesFile":Ljava/io/File;
    .restart local v7    # "propertiesFile":Ljava/io/File;
    goto :goto_5
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 457
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 458
    .local v1, "providerClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 459
    .local v0, "instance":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created new instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xml/serializer/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    return-object v0

    .line 462
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 463
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 465
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 466
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/serializer/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
