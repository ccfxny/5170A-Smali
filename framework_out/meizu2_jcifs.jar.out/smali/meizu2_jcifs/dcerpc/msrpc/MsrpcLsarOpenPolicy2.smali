.class public Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;
.super Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;
.source "MsrpcLsarOpenPolicy2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmeizu2_jcifs/dcerpc/msrpc/LsaPolicyHandle;)V
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "policyHandle"    # Lmeizu2_jcifs/dcerpc/msrpc/LsaPolicyHandle;

    .prologue
    const/4 v3, 0x0

    .line 25
    new-instance v1, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    invoke-direct {v1}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;-><init>()V

    invoke-direct {p0, p1, v1, p2, p3}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;-><init>(Ljava/lang/String;Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;ILmeizu2_jcifs/dcerpc/rpc$policy_handle;)V

    .line 26
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->object_attributes:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    const/16 v2, 0x18

    iput v2, v1, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    .line 27
    new-instance v0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-direct {v0}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;-><init>()V

    .line 28
    .local v0, "qos":Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;
    const/16 v1, 0xc

    iput v1, v0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    .line 29
    const/4 v1, 0x2

    iput-short v1, v0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    .line 30
    const/4 v1, 0x1

    iput-byte v1, v0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    .line 31
    iput-byte v3, v0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    .line 32
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->object_attributes:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    iput-object v0, v1, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 33
    iput v3, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->ptype:I

    .line 34
    const/4 v1, 0x3

    iput v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->flags:I

    .line 35
    return-void
.end method
