.class public Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;
.super Lmeizu2_jcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarLookupSids"
.end annotation


# instance fields
.field public count:I

.field public domains:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

.field public handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

.field public level:S

.field public names:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

.field public retval:I

.field public sids:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/rpc$policy_handle;Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;SI)V
    .locals 0
    .param p1, "handle"    # Lmeizu2_jcifs/dcerpc/rpc$policy_handle;
    .param p2, "sids"    # Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;
    .param p3, "domains"    # Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;
    .param p4, "names"    # Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;
    .param p5, "level"    # S
    .param p6, "count"    # I

    .prologue
    .line 821
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 822
    iput-object p1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .line 823
    iput-object p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->sids:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .line 824
    iput-object p3, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    .line 825
    iput-object p4, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    .line 826
    iput-short p5, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->level:S

    .line 827
    iput p6, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    .line 828
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
    .line 838
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 839
    .local v0, "_domainsp":I
    if-eqz v0, :cond_1

    .line 840
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    if-nez v1, :cond_0

    .line 841
    new-instance v1, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    invoke-direct {v1}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;-><init>()V

    iput-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    .line 843
    :cond_0
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    invoke-virtual {v1, p1}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 846
    :cond_1
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    invoke-virtual {v1, p1}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 847
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    .line 848
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    .line 849
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
    .line 831
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/rpc$policy_handle;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 832
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->sids:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 833
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 834
    iget-short v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->level:S

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 835
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 836
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 806
    const/16 v0, 0xf

    return v0
.end method
