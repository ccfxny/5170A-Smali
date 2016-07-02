.class public Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLookupSids;
.super Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;
.source "MsrpcLookupSids.java"


# instance fields
.field sids:[Lmeizu2_jcifs/smb/SID;


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/msrpc/LsaPolicyHandle;[Lmeizu2_jcifs/smb/SID;)V
    .locals 7
    .param p1, "policyHandle"    # Lmeizu2_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .param p2, "sids"    # [Lmeizu2_jcifs/smb/SID;

    .prologue
    .line 31
    new-instance v2, Lmeizu2_jcifs/dcerpc/msrpc/LsarSidArrayX;

    invoke-direct {v2, p2}, Lmeizu2_jcifs/dcerpc/msrpc/LsarSidArrayX;-><init>([Lmeizu2_jcifs/smb/SID;)V

    new-instance v3, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    invoke-direct {v3}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;-><init>()V

    new-instance v4, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    invoke-direct {v4}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;-><init>()V

    const/4 v5, 0x1

    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;-><init>(Lmeizu2_jcifs/dcerpc/rpc$policy_handle;Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;SI)V

    .line 37
    iput-object p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLookupSids;->sids:[Lmeizu2_jcifs/smb/SID;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLookupSids;->ptype:I

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLookupSids;->flags:I

    .line 40
    return-void
.end method
