.class Lorg/apache/http/impl/auth/HttpEntityDigester;
.super Ljava/io/OutputStream;
.source "HttpEntityDigester.java"


# instance fields
.field private closed:Z

.field private digest:[B

.field private final digester:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1, "digester"    # Ljava/security/MessageDigest;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    .line 50
    iget-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->closed:Z

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->closed:Z

    .line 75
    iget-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digest:[B

    .line 76
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_0
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digest:[B

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->closed:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 59
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->closed:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 67
    return-void
.end method
