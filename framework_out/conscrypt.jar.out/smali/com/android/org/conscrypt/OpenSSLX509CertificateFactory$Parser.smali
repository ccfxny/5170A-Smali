.class abstract Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
.super Ljava/lang/Object;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;

    .prologue
    .line 64
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method public generateItem(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 10
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    const/4 v7, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v8, "inStream == null"

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    .line 71
    .local v5, "markable":Z
    if-eqz v5, :cond_1

    .line 72
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    .line 75
    :cond_1
    new-instance v6, Ljava/io/PushbackInputStream;

    const/16 v8, 0x40

    invoke-direct {v6, p1, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 77
    .local v6, "pbis":Ljava/io/PushbackInputStream;
    :try_start_0
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v8

    array-length v8, v8

    new-array v0, v8, [B

    .line 79
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 80
    .local v4, "len":I
    if-gez v4, :cond_3

    .line 82
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v8, "inStream is empty"

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_2

    .line 111
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :cond_2
    :goto_0
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v7, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v4    # "len":I
    :cond_3
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v6, v0, v8, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 86
    const/4 v8, 0x0

    aget-byte v8, v0, v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_6

    .line 87
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v8

    array-length v8, v8

    if-ne v4, v8, :cond_7

    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 88
    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 106
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_4
    :goto_1
    return-object v7

    .line 92
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_5
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_6
    const/4 v8, 0x4

    aget-byte v8, v0, v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_8

    .line 100
    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_4

    .line 104
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 94
    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 106
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    goto :goto_1

    .line 112
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 10
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    const/16 v9, 0x40

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v8, "inStream == null"

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v7

    if-nez v7, :cond_1

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 201
    :goto_0
    return-object v2

    .line 128
    :catch_0
    move-exception v3

    .line 129
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v8, "Problem reading input stream"

    invoke-direct {v7, v8, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 132
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    .line 133
    .local v5, "markable":Z
    if-eqz v5, :cond_2

    .line 134
    invoke-virtual {p1, v9}, Ljava/io/InputStream;->mark(I)V

    .line 138
    :cond_2
    new-instance v6, Ljava/io/PushbackInputStream;

    invoke-direct {v6, p1, v9}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 140
    .local v6, "pbis":Ljava/io/PushbackInputStream;
    :try_start_1
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v7

    array-length v7, v7

    new-array v0, v7, [B

    .line 142
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 143
    .local v4, "len":I
    if-gez v4, :cond_4

    .line 145
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v8, "inStream is empty"

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    :catch_1
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_3

    .line 160
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 164
    :cond_3
    :goto_1
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v7, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 147
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v4    # "len":I
    :cond_4
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v7, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 149
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v7

    array-length v7, v7

    if-ne v4, v7, :cond_5

    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v7

    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 150
    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 154
    :cond_5
    const/4 v7, 0x4

    aget-byte v7, v0, v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    .line 155
    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_0

    .line 171
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 178
    :cond_7
    if-eqz v5, :cond_8

    .line 179
    invoke-virtual {p1, v9}, Ljava/io/InputStream;->mark(I)V

    .line 183
    :cond_8
    :try_start_4
    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    .local v1, "c":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 199
    .end local v1    # "c":Ljava/lang/Object;, "TT;"
    :goto_2
    if-nez v1, :cond_7

    goto :goto_0

    .line 185
    :catch_2
    move-exception v3

    .line 190
    .local v3, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    if-eqz v5, :cond_9

    .line 192
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 197
    :cond_9
    :goto_3
    const/4 v1, 0x0

    .restart local v1    # "c":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 161
    .end local v0    # "buffer":[B
    .end local v1    # "c":Ljava/lang/Object;, "TT;"
    .end local v2    # "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "len":I
    .local v3, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_1

    .line 193
    .restart local v0    # "buffer":[B
    .restart local v2    # "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local v3, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    .restart local v4    # "len":I
    :catch_4
    move-exception v7

    goto :goto_3
.end method
