.class public Lorg/apache/xml/utils/res/LongArrayWrapper;
.super Ljava/lang/Object;
.source "LongArrayWrapper.java"


# instance fields
.field private m_long:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0
    .param p1, "arg"    # [J

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/LongArrayWrapper;->m_long:[J

    .line 33
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/xml/utils/res/LongArrayWrapper;->m_long:[J

    array-length v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/xml/utils/res/LongArrayWrapper;->m_long:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
