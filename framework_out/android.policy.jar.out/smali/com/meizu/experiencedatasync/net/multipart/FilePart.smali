.class public Lcom/meizu/experiencedatasync/net/multipart/FilePart;
.super Lcom/meizu/experiencedatasync/net/multipart/PartBase;
.source "FilePart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "binary"

.field protected static final FILE_NAME:Ljava/lang/String; = "; filename="

.field private static final FILE_NAME_BYTES:[B


# instance fields
.field private source:Lcom/meizu/experiencedatasync/net/multipart/PartSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/FilePart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/meizu/experiencedatasync/net/multipart/PartSource;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcom/meizu/experiencedatasync/net/multipart/PartSource;

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/meizu/experiencedatasync/net/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/meizu/experiencedatasync/net/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/meizu/experiencedatasync/net/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcom/meizu/experiencedatasync/net/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .prologue
    .line 88
    if-nez p3, :cond_0

    const-string p3, "application/octet-stream"

    .end local p3    # "contentType":Ljava/lang/String;
    :cond_0
    if-nez p4, :cond_1

    const-string p4, "ISO-8859-1"

    .end local p4    # "charset":Ljava/lang/String;
    :cond_1
    const-string v0, "binary"

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/meizu/experiencedatasync/net/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-nez p2, :cond_2

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    iput-object p2, p0, Lcom/meizu/experiencedatasync/net/multipart/FilePart;->source:Lcom/meizu/experiencedatasync/net/multipart/PartSource;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lcom/meizu/experiencedatasync/net/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/meizu/experiencedatasync/net/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/meizu/experiencedatasync/net/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lcom/meizu/experiencedatasync/net/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/meizu/experiencedatasync/net/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/meizu/experiencedatasync/net/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lcom/meizu/experiencedatasync/net/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/meizu/experiencedatasync/net/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/meizu/experiencedatasync/net/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lcom/meizu/experiencedatasync/net/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/meizu/experiencedatasync/net/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/meizu/experiencedatasync/net/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method


# virtual methods
.method protected getSource()Lcom/meizu/experiencedatasync/net/multipart/PartSource;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/FilePart;->source:Lcom/meizu/experiencedatasync/net/multipart/PartSource;

    return-object v0
.end method

.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/FilePart;->source:Lcom/meizu/experiencedatasync/net/multipart/PartSource;

    invoke-interface {v0}, Lcom/meizu/experiencedatasync/net/multipart/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/FilePart;->lengthOfData()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 223
    :goto_0
    return-void

    .line 212
    :cond_0
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 213
    .local v2, "tmp":[B
    iget-object v3, p0, Lcom/meizu/experiencedatasync/net/multipart/FilePart;->source:Lcom/meizu/experiencedatasync/net/multipart/PartSource;

    invoke-interface {v3}, Lcom/meizu/experiencedatasync/net/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 216
    .local v0, "instream":Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-ltz v1, :cond_1

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 221
    .end local v1    # "len":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1    # "len":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/meizu/experiencedatasync/net/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 187
    iget-object v1, p0, Lcom/meizu/experiencedatasync/net/multipart/FilePart;->source:Lcom/meizu/experiencedatasync/net/multipart/PartSource;

    invoke-interface {v1}, Lcom/meizu/experiencedatasync/net/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 189
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 190
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 191
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 192
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 194
    :cond_0
    return-void
.end method
