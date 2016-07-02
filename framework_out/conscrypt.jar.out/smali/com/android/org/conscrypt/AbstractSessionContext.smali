.class abstract Lcom/android/org/conscrypt/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# static fields
.field private static final DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0x7080

.field static final OPEN_SSL:I = 0x1


# instance fields
.field volatile maximumSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field

.field final sslCtxNativePointer:J

.field volatile timeout:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "maximumSize"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x7080

    iput v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    .line 50
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    .line 55
    new-instance v0, Lcom/android/org/conscrypt/AbstractSessionContext$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractSessionContext$1;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    .line 75
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 76
    return-void
.end method

.method static log(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 302
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error converting session"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    return-void
.end method

.method private sessionIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/net/ssl/SSLSession;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/SSLSession;

    .line 85
    .local v0, "array":[Ljavax/net/ssl/SSLSession;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 86
    .end local v0    # "array":[Ljavax/net/ssl/SSLSession;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 312
    return-void

    .line 310
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getIds()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    new-instance v1, Lcom/android/org/conscrypt/AbstractSessionContext$2;

    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 4
    .param p1, "sessionId"    # [B

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "sessionId == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :cond_0
    new-instance v0, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 281
    .local v0, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    .line 283
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :goto_0
    return-object v1

    .line 283
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 287
    .restart local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getSessionCacheSize()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method public final getSessionTimeout()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    return v0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 4
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 291
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    .line 292
    .local v0, "id":[B
    array-length v2, v0

    if-nez v2, :cond_0

    .line 299
    :goto_0
    return-void

    .line 295
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 296
    .local v1, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected abstract sessionRemoved(Ljavax/net/ssl/SSLSession;)V
.end method

.method public final setSessionCacheSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 182
    if-gez p1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "size < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_0
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 187
    .local v0, "oldMaximum":I
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 190
    if-ge p1, v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->trimToSize()V

    .line 193
    :cond_1
    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 4
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 154
    if-gez p1, :cond_0

    .line 155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "seconds < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_0
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    .line 159
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    .line 165
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    goto :goto_0

    .line 170
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    return-void
.end method

.method toBytes(Ljavax/net/ssl/SSLSession;)[B
    .locals 12
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v10, 0x0

    .line 202
    instance-of v11, p1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-nez v11, :cond_0

    .line 235
    :goto_0
    return-object v10

    :cond_0
    move-object v9, p1

    .line 206
    check-cast v9, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    .line 208
    .local v9, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 209
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 211
    .local v4, "daos":Ljava/io/DataOutputStream;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 214
    invoke-virtual {v9}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getEncoded()[B

    move-result-object v5

    .line 215
    .local v5, "data":[B
    array-length v11, v5

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 216
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 219
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 220
    .local v3, "certs":[Ljava/security/cert/Certificate;
    array-length v11, v3

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 222
    move-object v0, v3

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v2, v0, v7

    .line 223
    .local v2, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    .line 224
    array-length v11, v5

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 225
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 222
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 229
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    goto :goto_0

    .line 230
    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "daos":Ljava/io/DataOutputStream;
    .end local v5    # "data":[B
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v6

    .line 231
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v6}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 234
    .local v6, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-static {v6}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .locals 14
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 245
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 246
    .local v6, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 248
    .local v9, "dais":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 249
    .local v13, "type":I
    const/4 v0, 0x1

    if-eq v13, v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    .line 251
    const/4 v0, 0x0

    .line 270
    .end local v13    # "type":I
    :goto_0
    return-object v0

    .line 254
    .restart local v13    # "type":I
    :cond_0
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 255
    .local v12, "length":I
    new-array v1, v12, [B

    .line 256
    .local v1, "sessionData":[B
    invoke-virtual {v9, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 258
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 259
    .local v8, "count":I
    new-array v4, v8, [Ljava/security/cert/X509Certificate;

    .line 260
    .local v4, "certs":[Ljava/security/cert/X509Certificate;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_1

    .line 261
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 262
    new-array v7, v12, [B

    .line 263
    .local v7, "certData":[B
    invoke-virtual {v9, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 264
    invoke-static {v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    aput-object v0, v4, v11

    .line 260
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 267
    .end local v7    # "certData":[B
    :cond_1
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lcom/android/org/conscrypt/AbstractSessionContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v1    # "sessionData":[B
    .end local v4    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v8    # "count":I
    .end local v11    # "i":I
    .end local v12    # "length":I
    .end local v13    # "type":I
    :catch_0
    move-exception v10

    .line 269
    .local v10, "e":Ljava/io/IOException;
    invoke-static {v10}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    .line 270
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected trimToSize()V
    .locals 6

    .prologue
    .line 137
    iget-object v5, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v5

    .line 138
    :try_start_0
    iget-object v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 139
    .local v3, "size":I
    iget v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    if-le v3, v4, :cond_1

    .line 140
    iget v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    sub-int v1, v3, v4

    .line 141
    .local v1, "removals":I
    iget-object v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSession;

    .line 144
    .local v2, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    .line 146
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    .line 148
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    .end local v1    # "removals":I
    .end local v2    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    monitor-exit v5

    .line 149
    return-void

    .line 148
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
