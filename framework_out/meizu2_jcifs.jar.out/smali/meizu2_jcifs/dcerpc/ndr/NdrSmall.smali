.class public Lmeizu2_jcifs/dcerpc/ndr/NdrSmall;
.super Lmeizu2_jcifs/dcerpc/ndr/NdrObject;
.source "NdrSmall.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 27
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lmeizu2_jcifs/dcerpc/ndr/NdrSmall;->value:I

    .line 28
    return-void
.end method


# virtual methods
.method public decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .param p1, "src"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/ndr/NdrSmall;->value:I

    .line 35
    return-void
.end method

.method public encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .param p1, "dst"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 31
    iget v0, p0, Lmeizu2_jcifs/dcerpc/ndr/NdrSmall;->value:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 32
    return-void
.end method
