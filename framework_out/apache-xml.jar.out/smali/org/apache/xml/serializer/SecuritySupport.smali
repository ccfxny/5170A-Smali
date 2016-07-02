.class Lorg/apache/xml/serializer/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# static fields
.field private static final securitySupport:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "ss":Lorg/apache/xml/serializer/SecuritySupport;
    :try_start_0
    const-string v3, "java.security.AccessController"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "c":Ljava/lang/Class;
    new-instance v2, Lorg/apache/xml/serializer/SecuritySupport12;

    invoke-direct {v2}, Lorg/apache/xml/serializer/SecuritySupport12;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v1    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    .local v2, "ss":Lorg/apache/xml/serializer/SecuritySupport;
    if-nez v2, :cond_2

    .line 71
    new-instance v1, Lorg/apache/xml/serializer/SecuritySupport;

    invoke-direct {v1}, Lorg/apache/xml/serializer/SecuritySupport;-><init>()V

    .line 72
    .end local v2    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    .restart local v1    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    :goto_0
    sput-object v1, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    .line 74
    .end local v0    # "c":Ljava/lang/Class;
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v3

    .line 70
    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lorg/apache/xml/serializer/SecuritySupport;

    .end local v1    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    invoke-direct {v1}, Lorg/apache/xml/serializer/SecuritySupport;-><init>()V

    .line 72
    .restart local v1    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    :cond_0
    sput-object v1, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    goto :goto_1

    .line 70
    :catchall_0
    move-exception v3

    if-nez v1, :cond_1

    .line 71
    new-instance v1, Lorg/apache/xml/serializer/SecuritySupport;

    .end local v1    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    invoke-direct {v1}, Lorg/apache/xml/serializer/SecuritySupport;-><init>()V

    .line 72
    .restart local v1    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    :cond_1
    sput-object v1, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    throw v3

    .end local v1    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v2    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    :cond_2
    move-object v1, v2

    .end local v2    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    .restart local v1    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lorg/apache/xml/serializer/SecuritySupport;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xml/serializer/SecuritySupport;

    return-object v0
.end method


# virtual methods
.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method getFileExists(Ljava/io/File;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 117
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
    .line 103
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method getLastModified(Ljava/io/File;)J
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    invoke-static {p2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 113
    .local v0, "ris":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 111
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
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
