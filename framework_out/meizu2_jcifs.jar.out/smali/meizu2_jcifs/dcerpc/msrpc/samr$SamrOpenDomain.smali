.class public Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;
.super Lmeizu2_jcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrOpenDomain"
.end annotation


# instance fields
.field public access_mask:I

.field public domain_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

.field public handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public sid:Lmeizu2_jcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/rpc$policy_handle;ILmeizu2_jcifs/dcerpc/rpc$sid_t;Lmeizu2_jcifs/dcerpc/rpc$policy_handle;)V
    .locals 0
    .param p1, "handle"    # Lmeizu2_jcifs/dcerpc/rpc$policy_handle;
    .param p2, "access_mask"    # I
    .param p3, "sid"    # Lmeizu2_jcifs/dcerpc/rpc$sid_t;
    .param p4, "domain_handle"    # Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .prologue
    .line 123
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 124
    iput-object p1, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .line 125
    iput p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->access_mask:I

    .line 126
    iput-object p3, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->sid:Lmeizu2_jcifs/dcerpc/rpc$sid_t;

    .line 127
    iput-object p4, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->domain_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .line 128
    return-void
.end method


# virtual methods
.method public decode_out(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .param p1, "_src"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->domain_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/rpc$policy_handle;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 137
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->retval:I

    .line 138
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
    .line 131
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/rpc$policy_handle;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 132
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->access_mask:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 133
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->sid:Lmeizu2_jcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/rpc$sid_t;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 134
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x7

    return v0
.end method
