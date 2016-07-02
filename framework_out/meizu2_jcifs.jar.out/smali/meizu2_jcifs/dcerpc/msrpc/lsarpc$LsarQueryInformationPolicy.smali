.class public Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;
.super Lmeizu2_jcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarQueryInformationPolicy"
.end annotation


# instance fields
.field public handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

.field public info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

.field public level:S

.field public retval:I


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/rpc$policy_handle;SLmeizu2_jcifs/dcerpc/ndr/NdrObject;)V
    .locals 0
    .param p1, "handle"    # Lmeizu2_jcifs/dcerpc/rpc$policy_handle;
    .param p2, "level"    # S
    .param p3, "info"    # Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    .prologue
    .line 784
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 785
    iput-object p1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .line 786
    iput-short p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->level:S

    .line 787
    iput-object p3, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    .line 788
    return-void
.end method


# virtual methods
.method public decode_out(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .param p1, "_src"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 795
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 796
    .local v0, "_infop":I
    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 798
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrObject;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 801
    :cond_0
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    .line 802
    return-void
.end method

.method public encode_in(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .param p1, "_dst"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 791
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/rpc$policy_handle;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 792
    iget-short v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->level:S

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 793
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x7

    return v0
.end method
