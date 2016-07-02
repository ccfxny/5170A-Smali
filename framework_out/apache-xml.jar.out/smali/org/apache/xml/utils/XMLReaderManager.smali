.class public Lorg/apache/xml/utils/XMLReaderManager;
.super Ljava/lang/Object;
.source "XMLReaderManager.java"


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

.field private static final m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;


# instance fields
.field private m_inUse:Ljava/util/Hashtable;

.field private m_readers:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/apache/xml/utils/XMLReaderManager;

    invoke-direct {v0}, Lorg/apache/xml/utils/XMLReaderManager;-><init>()V

    sput-object v0, Lorg/apache/xml/utils/XMLReaderManager;->m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getInstance()Lorg/apache/xml/utils/XMLReaderManager;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/apache/xml/utils/XMLReaderManager;->m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    if-nez v7, :cond_0

    .line 87
    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v7, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    .line 90
    :cond_0
    iget-object v7, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    if-nez v7, :cond_1

    .line 91
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    .line 96
    :cond_1
    iget-object v7, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xml/sax/XMLReader;

    .line 97
    .local v4, "reader":Lorg/xml/sax/XMLReader;
    if-eqz v4, :cond_4

    .line 98
    .local v5, "threadHasReader":Z
    :goto_0
    if-eqz v5, :cond_2

    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v7, :cond_6

    .line 105
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 121
    :goto_1
    :try_start_2
    const-string v6, "http://xml.org/sax/features/namespaces"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 122
    const-string v6, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :goto_2
    if-nez v5, :cond_3

    .line 138
    :try_start_3
    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :cond_3
    :goto_3
    monitor-exit p0

    return-object v4

    .end local v5    # "threadHasReader":Z
    :cond_4
    move v5, v6

    .line 97
    goto :goto_0

    .line 106
    .restart local v5    # "threadHasReader":Z
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v6, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v6, :cond_5

    .line 111
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    sput-object v6, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 112
    sget-object v6, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 115
    :cond_5
    sget-object v6, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_1

    .line 116
    :catch_1
    move-exception v3

    .line 117
    .local v3, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v1

    .line 128
    .local v1, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 84
    .end local v1    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4    # "reader":Lorg/xml/sax/XMLReader;
    .end local v5    # "threadHasReader":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 129
    .restart local v4    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v5    # "threadHasReader":Z
    :catch_3
    move-exception v2

    .line 130
    .local v2, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_7
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-virtual {v2}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    .end local v2    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :cond_6
    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 132
    :catch_4
    move-exception v6

    goto :goto_2

    .line 131
    :catch_5
    move-exception v6

    goto :goto_2

    .line 123
    :catch_6
    move-exception v6

    goto :goto_2
.end method

.method public declared-synchronized releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
