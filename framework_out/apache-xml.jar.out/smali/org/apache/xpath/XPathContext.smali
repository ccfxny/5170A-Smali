.class public Lorg/apache/xpath/XPathContext;
.super Lorg/apache/xml/dtm/DTMManager;
.source "XPathContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/XPathContext$XPathExpressionContext;
    }
.end annotation


# static fields
.field public static final RECURSIONLIMIT:I = 0x1000


# instance fields
.field expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

.field private m_DTMXRTreeFrags:Ljava/util/HashMap;

.field private m_axesIteratorStack:Ljava/util/Stack;

.field private m_contextNodeLists:Ljava/util/Stack;

.field private m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

.field private m_currentNodes:Lorg/apache/xml/utils/IntStack;

.field private m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

.field protected m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

.field private m_isSecureProcessing:Z

.field private m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

.field m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

.field private m_owner:Ljava/lang/Object;

.field private m_ownerGetErrorListener:Ljava/lang/reflect/Method;

.field private m_predicatePos:Lorg/apache/xml/utils/IntStack;

.field private m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

.field private m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

.field public m_primaryReader:Lorg/xml/sax/XMLReader;

.field private m_rtfdtm_stack:Ljava/util/Vector;

.field m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

.field private m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

.field private m_uriResolver:Ljavax/xml/transform/URIResolver;

.field private m_variableStacks:Lorg/apache/xpath/VariableStack;

.field private m_which_rtfdtm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 311
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/Object;

    .prologue
    .line 337
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    .line 338
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "recursiveVarContext"    # Z

    .prologue
    .line 349
    invoke-direct {p0, p2}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 350
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    .line 352
    :try_start_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getErrorListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "recursiveVarContext"    # Z

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 319
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMManager;-><init>()V

    .line 65
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    .line 76
    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    .line 78
    iput v3, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    .line 84
    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 90
    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    .line 102
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xml/dtm/DTMManager;->newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    .line 396
    new-instance v0, Lorg/apache/xml/utils/ObjectStack;

    invoke-direct {v0, v2}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    .line 502
    new-instance v0, Lorg/apache/xpath/SourceTreeManager;

    invoke-direct {v0}, Lorg/apache/xpath/SourceTreeManager;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    .line 668
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    .line 722
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0, v2}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    .line 853
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    .line 856
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    .line 859
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0, v2}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    .line 865
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    .line 911
    new-instance v0, Lorg/apache/xml/utils/ObjectStack;

    invoke-direct {v0, v2}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    .line 971
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    .line 1057
    new-instance v0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    invoke-direct {v0, p0}, Lorg/apache/xpath/XPathContext$XPathExpressionContext;-><init>(Lorg/apache/xpath/XPathContext;)V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    .line 320
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v3}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 322
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v3}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 323
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/xpath/VariableStack;

    invoke-direct {v0}, Lorg/apache/xpath/VariableStack;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    .line 326
    return-void

    .line 324
    :cond_0
    new-instance v0, Lorg/apache/xpath/VariableStack;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/xpath/VariableStack;-><init>(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/VariableStack;
    .locals 1
    .param p0, "x0"    # Lorg/apache/xpath/XPathContext;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    return-object v0
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 5
    .param p1, "b"    # Z
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 646
    if-nez p1, :cond_0

    .line 648
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 650
    .local v0, "errorHandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_0

    .line 652
    new-instance v2, Ljavax/xml/transform/TransformerException;

    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v2, v3, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 659
    .end local v0    # "errorHandler":Ljavax/xml/transform/ErrorListener;
    :cond_0
    return-void
.end method

.method private final releaseDTMXRTreeFrags()V
    .locals 3

    .prologue
    .line 1341
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 1351
    :goto_0
    return-void

    .line 1344
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1345
    .local v1, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1346
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    .line 1347
    .local v0, "frag":Lorg/apache/xpath/objects/DTMXRTreeFrag;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->destruct()V

    .line 1348
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1350
    .end local v0    # "frag":Lorg/apache/xpath/objects/DTMXRTreeFrag;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .param p1, "node"    # I

    .prologue
    .line 298
    new-instance v0, Lorg/apache/xpath/axes/OneStepIteratorForward;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(I)V

    .line 299
    .local v0, "iter":Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v0, p1, p0}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 300
    return-object v0
.end method

.method public createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "whatToShow"    # I
    .param p2, "filter"    # Lorg/apache/xml/dtm/DTMFilter;
    .param p3, "entityReferenceExpansion"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    return-object v0
.end method

.method public createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "xpathCompiler"    # Ljava/lang/Object;
    .param p2, "pos"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    return-object v0
.end method

.method public createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "xpathString"    # Ljava/lang/String;
    .param p2, "presolver"    # Lorg/apache/xml/utils/PrefixResolver;

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    return-object v0
.end method

.method public createDocumentFragment()Lorg/apache/xml/dtm/DTM;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/DTMManager;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getAxesIteratorStackStacks()Ljava/util/Stack;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    return-object v0
.end method

.method public final getContextNode()I
    .locals 1

    .prologue
    .line 1031
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    return v0
.end method

.method public final getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 683
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;

    .line 685
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContextNodeListsStack()Ljava/util/Stack;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    return-object v0
.end method

.method public final getContextNodes()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1044
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 1046
    .local v0, "cnl":Lorg/apache/xml/dtm/DTMIterator;
    if-eqz v0, :cond_0

    .line 1047
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1053
    .end local v0    # "cnl":Lorg/apache/xml/dtm/DTMIterator;
    :cond_0
    :goto_0
    return-object v2

    .line 1051
    :catch_0
    move-exception v1

    .line 1053
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
.end method

.method public final getCurrentExpressionNode()I
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    return v0
.end method

.method public getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    return-object v0
.end method

.method public final getCurrentNode()I
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    return v0
.end method

.method public getCurrentNodeList()Lorg/apache/xpath/axes/SubContextList;
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/SubContextList;

    goto :goto_0
.end method

.method public getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    return-object v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    .locals 6
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "unique"    # Z
    .param p3, "wsfilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p4, "incremental"    # Z
    .param p5, "doIndexing"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    return v0
.end method

.method public getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
    .locals 1
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result v0

    return v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    return-object v0
.end method

.method public getDTMXRTreeFrag(I)Lorg/apache/xpath/objects/DTMXRTreeFrag;
    .locals 3
    .param p1, "dtmIdentity"    # I

    .prologue
    .line 1323
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1324
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    .line 1327
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    .line 1332
    :goto_0
    return-object v1

    .line 1330
    :cond_1
    new-instance v0, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-direct {v0, p1, p0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;)V

    .line 1331
    .local v0, "frag":Lorg/apache/xpath/objects/DTMXRTreeFrag;
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1332
    goto :goto_0
.end method

.method public final getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 5

    .prologue
    .line 543
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v2, :cond_1

    .line 544
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 561
    :cond_0
    :goto_0
    return-object v1

    .line 546
    :cond_1
    const/4 v1, 0x0

    .line 549
    .local v1, "retval":Ljavax/xml/transform/ErrorListener;
    :try_start_0
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 550
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljavax/xml/transform/ErrorListener;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 556
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    if-nez v2, :cond_3

    .line 557
    new-instance v2, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v2}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    .line 558
    :cond_3
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    goto :goto_0

    .line 552
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    return-object v0
.end method

.method public getGlobalRTFDTM()Lorg/apache/xml/dtm/DTM;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1198
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->isTreeIncomplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    const/4 v2, 0x1

    move-object v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 1202
    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    return-object v0
.end method

.method public final getIteratorRoot()I
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->peepOrNull()I

    move-result v0

    return v0
.end method

.method public final getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/PrefixResolver;

    return-object v0
.end method

.method public getOwnerObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPredicatePos()I
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    return v0
.end method

.method public final getPredicateRoot()I
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->peepOrNull()I

    move-result v0

    return v0
.end method

.method public final getPrimaryReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_primaryReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public getRTFDTM()Lorg/apache/xml/dtm/DTM;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1231
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 1233
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    .line 1234
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    move-object v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 1235
    .local v6, "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1236
    iget v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    .line 1264
    :cond_0
    :goto_0
    return-object v6

    .line 1238
    .end local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    :cond_1
    iget v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    if-gez v0, :cond_2

    .line 1240
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .restart local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    goto :goto_0

    .line 1244
    .end local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    :cond_2
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget v3, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 1252
    .restart local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    invoke-virtual {v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->isTreeIncomplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1255
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .restart local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    goto :goto_0

    .line 1258
    :cond_3
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    move-object v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v6

    .end local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 1259
    .restart local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getSAXLocator()Ljavax/xml/transform/SourceLocator;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/SourceLocator;

    return-object v0
.end method

.method public final getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    return-object v0
.end method

.method public getSubContextList()Lorg/apache/xpath/axes/SubContextList;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/SubContextList;

    goto :goto_0
.end method

.method public final getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public final getVarStack()Lorg/apache/xpath/VariableStack;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    return-object v0
.end method

.method public isSecureProcessing()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    return v0
.end method

.method public final popContextNodeList()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: popContextNodeList when stack is empty!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 710
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method public final popCurrentExpressionNode()V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 909
    return-void
.end method

.method public final popCurrentNode()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 802
    return-void
.end method

.method public final popCurrentNodeAndExpression()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 756
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 757
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 758
    return-void
.end method

.method public final popExpressionState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 779
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 780
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 781
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 782
    return-void
.end method

.method public final popIteratorRoot()V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->popQuick()V

    .line 842
    return-void
.end method

.method public final popNamespaceContext()V
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 962
    return-void
.end method

.method public final popPredicatePos()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->pop()I

    .line 880
    return-void
.end method

.method public final popPredicateRoot()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->popQuick()V

    .line 818
    return-void
.end method

.method public popRTFContext()V
    .locals 4

    .prologue
    .line 1294
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v1

    .line 1295
    .local v1, "previous":I
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    if-ne v2, v1, :cond_2

    .line 1300
    if-ltz v1, :cond_0

    .line 1302
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    check-cast v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->popRewindMark()Z

    goto :goto_0

    .line 1305
    :cond_2
    :goto_1
    iget v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    if-eq v2, v1, :cond_0

    .line 1310
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget v3, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    check-cast v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->popRewindMark()Z

    move-result v0

    .line 1311
    .local v0, "isEmpty":Z
    iget v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    goto :goto_1
.end method

.method public popSAXLocator()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public final popSubContextList()V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 994
    return-void
.end method

.method public final pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 1
    .param p1, "nl"    # Lorg/apache/xml/dtm/DTMIterator;

    .prologue
    .line 697
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    return-void
.end method

.method public final pushCurrentExpressionNode(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 899
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 900
    return-void
.end method

.method public final pushCurrentNode(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 793
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 794
    return-void
.end method

.method public final pushCurrentNodeAndExpression(II)V
    .locals 1
    .param p1, "cn"    # I
    .param p2, "en"    # I

    .prologue
    .line 747
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 748
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 749
    return-void
.end method

.method public final pushExpressionState(IILorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "cn"    # I
    .param p2, "en"    # I
    .param p3, "nc"    # Lorg/apache/xml/utils/PrefixResolver;

    .prologue
    .line 769
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 770
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 771
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    return-void
.end method

.method public final pushIteratorRoot(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    .line 834
    return-void
.end method

.method public final pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "pr"    # Lorg/apache/xml/utils/PrefixResolver;

    .prologue
    .line 944
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    return-void
.end method

.method public final pushNamespaceContextNull()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    return-void
.end method

.method public final pushPredicatePos(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 874
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 875
    return-void
.end method

.method public final pushPredicateRoot(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 809
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    .line 810
    return-void
.end method

.method public pushRTFContext()V
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 1274
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->pushRewindMark()V

    .line 1276
    :cond_0
    return-void
.end method

.method public pushSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "location"    # Ljavax/xml/transform/SourceLocator;

    .prologue
    .line 415
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    return-void
.end method

.method public pushSAXLocatorNull()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-void
.end method

.method public final pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V
    .locals 1
    .param p1, "iter"    # Lorg/apache/xpath/axes/SubContextList;

    .prologue
    .line 984
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    return-void
.end method

.method public release(Lorg/apache/xml/dtm/DTM;Z)Z
    .locals 1
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "shouldHardDelete"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 362
    invoke-direct {p0}, Lorg/apache/xpath/XPathContext;->releaseDTMXRTreeFrags()V

    .line 364
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTM;

    invoke-virtual {v2, v1, v5}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    iput-object v3, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    .line 369
    iput v4, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    .line 371
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v1, v2, v5}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    .line 373
    :cond_1
    iput-object v3, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 376
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xml/dtm/DTMManager;->newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    .line 379
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectStack;->removeAllElements()V

    .line 380
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    .line 381
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    .line 382
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->removeAllElements()V

    .line 383
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->removeAllElements()V

    .line 384
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->RemoveAllNoClear()V

    .line 385
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->removeAllElements()V

    .line 386
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->RemoveAllNoClear()V

    .line 387
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectStack;->removeAllElements()V

    .line 389
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 391
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 392
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-void
.end method

.method public setAxesIteratorStackStacks(Ljava/util/Stack;)V
    .locals 0
    .param p1, "s"    # Ljava/util/Stack;

    .prologue
    .line 974
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    return-void
.end method

.method public setContextNodeListsStack(Ljava/util/Stack;)V
    .locals 0
    .param p1, "s"    # Ljava/util/Stack;

    .prologue
    .line 671
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    return-void
.end method

.method public setCurrentExpressionNodeStack(Lorg/apache/xml/utils/IntStack;)V
    .locals 0
    .param p1, "nv"    # Lorg/apache/xml/utils/IntStack;

    .prologue
    .line 863
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    return-void
.end method

.method public setCurrentNodeStack(Lorg/apache/xml/utils/IntStack;)V
    .locals 0
    .param p1, "nv"    # Lorg/apache/xml/utils/IntStack;

    .prologue
    .line 727
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 3
    .param p1, "listener"    # Ljavax/xml/transform/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 571
    if-nez p1, :cond_0

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_NULL_ERROR_HANDLER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 574
    return-void
.end method

.method public final setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "pr"    # Lorg/apache/xml/utils/PrefixResolver;

    .prologue
    .line 933
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    .line 934
    return-void
.end method

.method public setPrimaryReader(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 626
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_primaryReader:Lorg/xml/sax/XMLReader;

    .line 627
    return-void
.end method

.method public setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "location"    # Ljavax/xml/transform/SourceLocator;

    .prologue
    .line 405
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    .line 406
    return-void
.end method

.method public setSecureProcessing(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    .line 122
    return-void
.end method

.method public setSourceTreeManager(Lorg/apache/xpath/SourceTreeManager;)V
    .locals 0
    .param p1, "mgr"    # Lorg/apache/xpath/SourceTreeManager;

    .prologue
    .line 522
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    .line 523
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0
    .param p1, "resolver"    # Ljavax/xml/transform/URIResolver;

    .prologue
    .line 601
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 602
    return-void
.end method

.method public final setVarStack(Lorg/apache/xpath/VariableStack;)V
    .locals 0
    .param p1, "varStack"    # Lorg/apache/xpath/VariableStack;

    .prologue
    .line 495
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    .line 496
    return-void
.end method
