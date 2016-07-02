.class public abstract Lmeizu2_jcifs/dcerpc/ndr/NdrObject;
.super Ljava/lang/Object;
.source "NdrObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation
.end method

.method public abstract encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation
.end method
