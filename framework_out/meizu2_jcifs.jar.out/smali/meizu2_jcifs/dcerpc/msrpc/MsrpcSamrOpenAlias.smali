.class public Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;
.super Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;
.source "MsrpcSamrOpenAlias.java"


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/msrpc/SamrDomainHandle;IILmeizu2_jcifs/dcerpc/msrpc/SamrAliasHandle;)V
    .locals 1
    .param p1, "handle"    # Lmeizu2_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .param p2, "access"    # I
    .param p3, "rid"    # I
    .param p4, "aliasHandle"    # Lmeizu2_jcifs/dcerpc/msrpc/SamrAliasHandle;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;-><init>(Lmeizu2_jcifs/dcerpc/rpc$policy_handle;IILmeizu2_jcifs/dcerpc/rpc$policy_handle;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;->ptype:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;->flags:I

    .line 32
    return-void
.end method
