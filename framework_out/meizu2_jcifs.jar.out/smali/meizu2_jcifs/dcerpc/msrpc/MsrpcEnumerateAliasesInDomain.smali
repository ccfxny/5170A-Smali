.class public Lmeizu2_jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;
.super Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;
.source "MsrpcEnumerateAliasesInDomain.java"


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/msrpc/SamrDomainHandle;ILmeizu2_jcifs/dcerpc/msrpc/samr$SamrSamArray;)V
    .locals 6
    .param p1, "domainHandle"    # Lmeizu2_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .param p2, "acct_flags"    # I
    .param p3, "sam"    # Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrSamArray;

    .prologue
    const/4 v2, 0x0

    .line 29
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;-><init>(Lmeizu2_jcifs/dcerpc/rpc$policy_handle;IILmeizu2_jcifs/dcerpc/msrpc/samr$SamrSamArray;I)V

    .line 30
    iput-object p3, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->sam:Lmeizu2_jcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 31
    iput v2, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->ptype:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->flags:I

    .line 33
    return-void
.end method
