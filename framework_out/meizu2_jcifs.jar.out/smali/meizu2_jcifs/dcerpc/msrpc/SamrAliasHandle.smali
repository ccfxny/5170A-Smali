.class public Lmeizu2_jcifs/dcerpc/msrpc/SamrAliasHandle;
.super Lmeizu2_jcifs/dcerpc/rpc$policy_handle;
.source "SamrAliasHandle.java"


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/DcerpcHandle;Lmeizu2_jcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    .locals 4
    .param p1, "handle"    # Lmeizu2_jcifs/dcerpc/DcerpcHandle;
    .param p2, "domainHandle"    # Lmeizu2_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .param p3, "access"    # I
    .param p4, "rid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 33
    new-instance v0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;

    invoke-direct {v0, p2, p3, p4, p0}, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;-><init>(Lmeizu2_jcifs/dcerpc/msrpc/SamrDomainHandle;IILmeizu2_jcifs/dcerpc/msrpc/SamrAliasHandle;)V

    .line 34
    .local v0, "rpc":Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;
    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu2_jcifs/dcerpc/DcerpcMessage;)V

    .line 35
    iget v1, v0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;->retval:I

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Lmeizu2_jcifs/smb/SmbException;

    iget v2, v0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;->retval:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmeizu2_jcifs/smb/SmbException;-><init>(IZ)V

    throw v1

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method
