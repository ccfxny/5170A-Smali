.class public Lmeizu2_jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;
.super Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;
.source "MsrpcQueryInformationPolicy.java"


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/msrpc/LsaPolicyHandle;SLmeizu2_jcifs/dcerpc/ndr/NdrObject;)V
    .locals 1
    .param p1, "policyHandle"    # Lmeizu2_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .param p2, "level"    # S
    .param p3, "info"    # Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;-><init>(Lmeizu2_jcifs/dcerpc/rpc$policy_handle;SLmeizu2_jcifs/dcerpc/ndr/NdrObject;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;->ptype:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;->flags:I

    .line 33
    return-void
.end method
