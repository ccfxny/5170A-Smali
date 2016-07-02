.class Lorg/apache/xml/utils/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# static fields
.field private static final securitySupport:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, "ss":Lorg/apache/xml/utils/SecuritySupport;
    :try_start_0
    const-string v3, "java.security.AccessController"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "c":Ljava/lang/Class;
    new-instance v2, Lorg/apache/xml/utils/SecuritySupport12;

    invoke-direct {v2}, Lorg/apache/xml/utils/SecuritySupport12;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v1    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    .local v2, "ss":Lorg/apache/xml/utils/SecuritySupport;
    if-nez v2, :cond_2

    .line 73
    new-instance v1, Lorg/apache/xml/utils/SecuritySupport;

    invoke-direct {v1}, Lorg/apache/xml/utils/SecuritySupport;-><init>()V

    .line 74
    .end local v2    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    .restart local v1    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    :goto_0
    sput-object v1, Lorg/apache/xml/utils/SecuritySupport;->securitySupport:Ljava/lang/Object;

    .line 76
    .end local v0    # "c":Ljava/lang/Class;
    :goto_1
    return-void

    .line 69
    :catch_0
    move-exception v3

    .line 72
    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lorg/apache/xml/utils/SecuritySupport;

    .end local v1    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    invoke-direct {v1}, Lorg/apache/xml/utils/SecuritySupport;-><init>()V

    .line 74
    .restart local v1    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    :cond_0
    sput-object v1, Lorg/apache/xml/utils/SecuritySupport;->securitySupport:Ljava/lang/Object;

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v3

    if-nez v1, :cond_1

    .line 73
    new-instance v1, Lorg/apache/xml/utils/SecuritySupport;

    .end local v1    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    invoke-direct {v1}, Lorg/apache/xml/utils/SecuritySupport;-><init>()V

    .line 74
    .restart local v1    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    :cond_1
    sput-object v1, Lorg/apache/xml/utils/SecuritySupport;->securitySupport:Ljava/lang/Object;

    throw v3

    .end local v1    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v2    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    :cond_2
    move-object v1, v2

    .end local v2    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    .restart local v1    # "ss":Lorg/apache/xml/utils/SecuritySupport;
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lorg/apache/xml/utils/SecuritySupport;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/apache/xml/utils/SecuritySupport;->securitySupport:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xml/utils/SecuritySupport;

    return-object v0
.end method


# virtual methods
.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method getFileExists(Ljava/io/File;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method getLastModified(Ljava/io/File;)J
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    invoke-static {p2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 115
    .local v0, "ris":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 113
    .end local v0    # "ris":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "ris":Ljava/io/InputStream;
    goto :goto_0
.end method

.method getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
