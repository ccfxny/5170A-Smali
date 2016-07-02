.class final Lorg/apache/xml/serializer/dom3/DOMOutputImpl;
.super Ljava/lang/Object;
.source "DOMOutputImpl.java"

# interfaces
.implements Lorg/w3c/dom/ls/LSOutput;


# instance fields
.field private fByteStream:Ljava/io/OutputStream;

.field private fCharStream:Ljava/io/Writer;

.field private fEncoding:Ljava/lang/String;

.field private fSystemId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    .line 64
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    .line 65
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public getByteStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public setByteStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "byteStream"    # Ljava/io/OutputStream;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    .line 119
    return-void
.end method

.method public setCharacterStream(Ljava/io/Writer;)V
    .locals 0
    .param p1, "characterStream"    # Ljava/io/Writer;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    .line 95
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    .line 145
    return-void
.end method
