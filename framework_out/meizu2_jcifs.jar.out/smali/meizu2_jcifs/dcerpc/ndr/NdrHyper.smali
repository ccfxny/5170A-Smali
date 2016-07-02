.class public Lmeizu2_jcifs/dcerpc/ndr/NdrHyper;
.super Lmeizu2_jcifs/dcerpc/ndr/NdrObject;
.source "NdrHyper.java"


# instance fields
.field public value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 27
    iput-wide p1, p0, Lmeizu2_jcifs/dcerpc/ndr/NdrHyper;->value:J

    .line 28
    return-void
.end method


# virtual methods
.method public decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .param p1, "src"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_hyper()J

    move-result-wide v0

    iput-wide v0, p0, Lmeizu2_jcifs/dcerpc/ndr/NdrHyper;->value:J

    .line 35
    return-void
.end method

.method public encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .param p1, "dst"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 31
    iget-wide v0, p0, Lmeizu2_jcifs/dcerpc/ndr/NdrHyper;->value:J

    invoke-virtual {p1, v0, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_hyper(J)V

    .line 32
    return-void
.end method
