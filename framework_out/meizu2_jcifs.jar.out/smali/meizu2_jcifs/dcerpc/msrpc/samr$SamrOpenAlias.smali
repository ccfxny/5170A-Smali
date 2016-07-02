.class public Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;
.super Lmeizu2_jcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrOpenAlias"
.end annotation


# instance fields
.field public access_mask:I

.field public alias_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

.field public domain_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public rid:I


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/rpc$policy_handle;IILmeizu2_jcifs/dcerpc/rpc$policy_handle;)V
    .locals 0
    .param p1, "domain_handle"    # Lmeizu2_jcifs/dcerpc/rpc$policy_handle;
    .param p2, "access_mask"    # I
    .param p3, "rid"    # I
    .param p4, "alias_handle"    # Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .prologue
    .line 301
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 302
    iput-object p1, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->domain_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .line 303
    iput p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->access_mask:I

    .line 304
    iput p3, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->rid:I

    .line 305
    iput-object p4, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->alias_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    .line 306
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
    .line 314
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->alias_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/rpc$policy_handle;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 315
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->retval:I

    .line 316
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
    .line 309
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->domain_handle:Lmeizu2_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/rpc$policy_handle;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 310
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->access_mask:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 311
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->rid:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 312
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 290
    const/16 v0, 0x1b

    return v0
.end method
