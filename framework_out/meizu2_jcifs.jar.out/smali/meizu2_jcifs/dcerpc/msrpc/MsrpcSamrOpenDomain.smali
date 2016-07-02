.class public Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;
.super Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;
.source "MsrpcSamrOpenDomain.java"


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/msrpc/SamrPolicyHandle;ILmeizu2_jcifs/dcerpc/rpc$sid_t;Lmeizu2_jcifs/dcerpc/msrpc/SamrDomainHandle;)V
    .locals 1
    .param p1, "handle"    # Lmeizu2_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .param p2, "access"    # I
    .param p3, "sid"    # Lmeizu2_jcifs/dcerpc/rpc$sid_t;
    .param p4, "domainHandle"    # Lmeizu2_jcifs/dcerpc/msrpc/SamrDomainHandle;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;-><init>(Lmeizu2_jcifs/dcerpc/rpc$policy_handle;ILmeizu2_jcifs/dcerpc/rpc$sid_t;Lmeizu2_jcifs/dcerpc/rpc$policy_handle;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;->ptype:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;->flags:I

    .line 32
    return-void
.end method
