.class public Lmeizu2_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
.super Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;
.source "MsrpcGetMembersInAlias.java"


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/msrpc/SamrAliasHandle;Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V
    .locals 1
    .param p1, "aliasHandle"    # Lmeizu2_jcifs/dcerpc/msrpc/SamrAliasHandle;
    .param p2, "sids"    # Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;-><init>(Lmeizu2_jcifs/dcerpc/rpc$policy_handle;Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    .line 28
    iput-object p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->sids:Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->ptype:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->flags:I

    .line 31
    return-void
.end method
