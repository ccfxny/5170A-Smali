.class public Lorg/apache/xml/utils/SAXSourceLocator;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "SAXSourceLocator.java"

# interfaces
.implements Ljavax/xml/transform/SourceLocator;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x2c2799f6a21a0750L


# instance fields
.field m_locator:Lorg/xml/sax/Locator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    .line 75
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setColumnNumber(I)V

    .line 76
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setLineNumber(I)V

    .line 77
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setPublicId(Ljava/lang/String;)V

    .line 78
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    .line 60
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setColumnNumber(I)V

    .line 61
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setLineNumber(I)V

    .line 62
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setPublicId(Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "spe"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 90
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setLineNumber(I)V

    .line 91
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setColumnNumber(I)V

    .line 92
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setPublicId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getColumnNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getLineNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
