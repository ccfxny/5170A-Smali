.class public Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrConnect2;
.super Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrConnect2;
.source "MsrpcSamrConnect2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmeizu2_jcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .locals 1
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "policyHandle"    # Lmeizu2_jcifs/dcerpc/msrpc/SamrPolicyHandle;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrConnect2;-><init>(Ljava/lang/String;ILmeizu2_jcifs/dcerpc/rpc$policy_handle;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrConnect2;->ptype:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrConnect2;->flags:I

    .line 27
    return-void
.end method
