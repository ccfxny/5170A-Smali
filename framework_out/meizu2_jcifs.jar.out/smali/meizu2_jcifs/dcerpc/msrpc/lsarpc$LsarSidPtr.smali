.class public Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;
.super Lmeizu2_jcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarSidPtr"
.end annotation


# instance fields
.field public sid:Lmeizu2_jcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .param p1, "_src"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 386
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 388
    .local v0, "_sidp":I
    if-eqz v0, :cond_1

    .line 389
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Lmeizu2_jcifs/dcerpc/rpc$sid_t;

    if-nez v1, :cond_0

    .line 390
    new-instance v1, Lmeizu2_jcifs/dcerpc/rpc$sid_t;

    invoke-direct {v1}, Lmeizu2_jcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Lmeizu2_jcifs/dcerpc/rpc$sid_t;

    .line 392
    :cond_0
    iget-object p1, p1, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;

    .line 393
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Lmeizu2_jcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v1, p1}, Lmeizu2_jcifs/dcerpc/rpc$sid_t;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 396
    :cond_1
    return-void
.end method

.method public encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .param p1, "_dst"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 376
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Lmeizu2_jcifs/dcerpc/rpc$sid_t;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 378
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Lmeizu2_jcifs/dcerpc/rpc$sid_t;

    if-eqz v0, :cond_0

    .line 379
    iget-object p1, p1, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;

    .line 380
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Lmeizu2_jcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/rpc$sid_t;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 383
    :cond_0
    return-void
.end method
