.class public Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;
.super Lmeizu2_jcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarQueryInformationPolicy2"
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
    .line 894
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 895
    iput-object p1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .line 896
    iput-short p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->level:S

    .line 897
    iput-object p3, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    .line 898
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
    .line 905
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 906
    .local v0, "_infop":I
    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 908
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrObject;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 911
    :cond_0
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->retval:I

    .line 912
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
    .line 901
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/rpc$policy_handle;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 902
    iget-short v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->level:S

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 903
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 887
    const/16 v0, 0x2e

    return v0
.end method
