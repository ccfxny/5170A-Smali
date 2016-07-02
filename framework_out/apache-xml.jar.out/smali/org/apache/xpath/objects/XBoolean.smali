.class public Lorg/apache/xpath/objects/XBoolean;
.super Lorg/apache/xpath/objects/XObject;
.source "XBoolean.java"


# static fields
.field public static final S_FALSE:Lorg/apache/xpath/objects/XBoolean;

.field public static final S_TRUE:Lorg/apache/xpath/objects/XBoolean;

.field static final serialVersionUID:J = -0x29258ee87c86ba91L


# instance fields
.field private final m_val:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/apache/xpath/objects/XBooleanStatic;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XBooleanStatic;-><init>(Z)V

    sput-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    .line 42
    new-instance v0, Lorg/apache/xpath/objects/XBooleanStatic;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XBooleanStatic;-><init>(Z)V

    sput-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XBoolean;->setObject(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 58
    iput-boolean p1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    .line 59
    return-void
.end method


# virtual methods
.method public bool()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    return v0
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 3
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    .prologue
    .line 155
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 156
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v1

    .line 160
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "#BOOLEAN"

    return-object v0
.end method

.method public num()D
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public object()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XBoolean;->setObject(Ljava/lang/Object;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_obj:Ljava/lang/Object;

    return-object v0
.end method

.method public str()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
