.class public Ljunit/runner/TestCaseClassLoader;
.super Ljava/lang/ClassLoader;
.source "TestCaseClassLoader.java"


# static fields
.field static final EXCLUDED_FILE:Ljava/lang/String; = "excluded.properties"


# instance fields
.field private defaultExclusions:[Ljava/lang/String;

.field private fExcluded:Ljava/util/Vector;

.field private fPathItems:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljunit/runner/TestCaseClassLoader;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "classPath"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "junit.framework."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "junit.extensions."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "junit.runner."

    aput-object v2, v0, v1

    iput-object v0, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Ljunit/runner/TestCaseClassLoader;->scanPath(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljunit/runner/TestCaseClassLoader;->readExcludedPackages()V

    .line 53
    return-void
.end method

.method private getClassData(Ljava/io/File;)[B
    .locals 5
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 142
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 143
    .local v3, "stream":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x3e8

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 144
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x3e8

    new-array v0, v4, [B

    .line 146
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 147
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 152
    .end local v0    # "b":[B
    .end local v1    # "n":I
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 154
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 148
    .restart local v0    # "b":[B
    .restart local v1    # "n":I
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 150
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method private loadFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0, v0}, Ljunit/runner/TestCaseClassLoader;->getClassData(Ljava/io/File;)[B

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadJarData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v8, 0x0

    .line 159
    .local v8, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v7, 0x0

    .line 160
    .local v7, "stream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "archive":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    .line 164
    :cond_0
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .local v9, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v9, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 169
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_1

    .line 170
    const/4 v1, 0x0

    move-object v8, v9

    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 165
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    .line 166
    .local v3, "io":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0

    .line 171
    .end local v3    # "io":Ljava/io/IOException;
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    long-to-int v6, v10

    .line 173
    .local v6, "size":I
    :try_start_1
    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 174
    new-array v1, v6, [B

    .line 175
    .local v1, "data":[B
    const/4 v5, 0x0

    .line 176
    .local v5, "pos":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 177
    array-length v10, v1

    sub-int/2addr v10, v5

    invoke-virtual {v7, v1, v5, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 178
    .local v4, "n":I
    add-int/2addr v5, v4

    .line 179
    goto :goto_1

    .line 180
    .end local v4    # "n":I
    :cond_2
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    if-eqz v7, :cond_3

    .line 186
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_2
    move-object v8, v9

    .line 188
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 182
    .end local v1    # "data":[B
    .end local v5    # "pos":I
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v10

    .line 185
    if-eqz v7, :cond_4

    .line 186
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 190
    :cond_4
    :goto_3
    const/4 v1, 0x0

    move-object v8, v9

    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 184
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v10

    .line 185
    if-eqz v7, :cond_5

    .line 186
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 188
    :cond_5
    :goto_4
    throw v10

    .line 187
    .restart local v1    # "data":[B
    .restart local v5    # "pos":I
    :catch_2
    move-exception v10

    goto :goto_2

    .end local v1    # "data":[B
    .end local v5    # "pos":I
    :catch_3
    move-exception v10

    goto :goto_3

    :catch_4
    move-exception v11

    goto :goto_4
.end method

.method private lookupClassData(Ljava/lang/String;)[B
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 113
    iget-object v4, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljunit/runner/TestCaseClassLoader;->isJar(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-direct {p0, v3, v1}, Ljunit/runner/TestCaseClassLoader;->loadJarData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 120
    :goto_1
    if-eqz v0, :cond_1

    .line 121
    return-object v0

    .line 118
    :cond_0
    invoke-direct {p0, v3, v1}, Ljunit/runner/TestCaseClassLoader;->loadFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 112
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-direct {v4, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readExcludedPackages()V
    .locals 8

    .prologue
    .line 194
    new-instance v6, Ljava/util/Vector;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 196
    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    iget-object v7, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "excluded.properties"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 199
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_2

    .line 224
    :cond_1
    :goto_1
    return-void

    .line 201
    :cond_2
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 203
    .local v4, "p":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 213
    :goto_2
    invoke-virtual {v4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 215
    .local v3, "key":Ljava/lang/String;
    const-string v6, "excluded."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 216
    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 218
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 219
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 220
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 221
    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 205
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 210
    :catch_1
    move-exception v6

    goto :goto_1

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 209
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 211
    :goto_4
    throw v6

    .line 210
    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_4
.end method

.method private scanPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "classPath"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v2, "path.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "separator":Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    .line 58
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public isExcluded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x1

    .line 78
    :goto_1
    return v1

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method isJar(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathEntry"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 85
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 107
    .end local v0    # "c":Ljava/lang/Class;
    .local v1, "c":Ljava/lang/Class;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 91
    .end local v1    # "c":Ljava/lang/Class;
    .restart local v0    # "c":Ljava/lang/Class;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->isExcluded(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    :try_start_2
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 94
    .end local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "c":Ljava/lang/Class;
    goto :goto_0

    .line 95
    .end local v1    # "c":Ljava/lang/Class;
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 99
    :cond_1
    if-nez v0, :cond_3

    .line 100
    :try_start_3
    invoke-direct {p0, p1}, Ljunit/runner/TestCaseClassLoader;->lookupClassData(Ljava/lang/String;)[B

    move-result-object v2

    .line 101
    .local v2, "data":[B
    if-nez v2, :cond_2

    .line 102
    new-instance v3, Ljava/lang/ClassNotFoundException;

    invoke-direct {v3}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "data":[B
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 103
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v2    # "data":[B
    :cond_2
    const/4 v3, 0x0

    :try_start_4
    array-length v4, v2

    invoke-virtual {p0, p1, v2, v3, v4}, Ljunit/runner/TestCaseClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    .line 105
    .end local v2    # "data":[B
    :cond_3
    if-eqz p2, :cond_4

    .line 106
    invoke-virtual {p0, v0}, Ljunit/runner/TestCaseClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move-object v1, v0

    .line 107
    .end local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "c":Ljava/lang/Class;
    goto :goto_0
.end method
