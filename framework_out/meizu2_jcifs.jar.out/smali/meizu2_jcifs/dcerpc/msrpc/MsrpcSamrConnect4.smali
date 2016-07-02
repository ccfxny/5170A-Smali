.class public Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrConnect4;
.super Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrConnect4;
.source "MsrpcSamrConnect4.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmeizu2_jcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .locals 1
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "policyHandle"    # Lmeizu2_jcifs/dcerpc/msrpc/SamrPolicyHandle;

    .prologue
    .line 24
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2, p3}, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrConnect4;-><init>(Ljava/lang/String;IILmeizu2_jcifs/dcerpc/rpc$policy_handle;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrConnect4;->ptype:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrConnect4;->flags:I

    .line 27
    return-void
.end method
