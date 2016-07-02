.class public Lcom/android/org/bouncycastle/asn1/BERGenerator;
.super Lcom/android/org/bouncycastle/asn1/ASN1Generator;
.source "BERGenerator.java"


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 28
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    .line 29
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    .line 30
    return-void
.end method

.method private writeHdr(I)V
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 42
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected writeBERBody(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "contentStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "ch":I
    if-ltz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method protected writeBEREnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 94
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 99
    :cond_0
    return-void
.end method

.method protected writeBERHeader(I)V
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v1, :cond_2

    .line 51
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    or-int/lit16 v0, v1, 0x80

    .line 53
    .local v0, "tagNum":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v1, :cond_0

    .line 55
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 74
    .end local v0    # "tagNum":I
    :goto_0
    return-void

    .line 60
    .restart local v0    # "tagNum":I
    :cond_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    .line 62
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_0

    .line 72
    .end local v0    # "tagNum":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_0
.end method
