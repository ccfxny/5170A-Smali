.class public Lmeizu2_jcifs/dcerpc/msrpc/LsaPolicyHandle;
.super Lmeizu2_jcifs/dcerpc/rpc$policy_handle;
.source "LsaPolicyHandle.java"


# direct methods
.method public constructor <init>(Lmeizu2_jcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .locals 4
    .param p1, "handle"    # Lmeizu2_jcifs/dcerpc/DcerpcHandle;
    .param p2, "server"    # Ljava/lang/String;
    .param p3, "access"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 31
    if-nez p2, :cond_0

    .line 32
    const-string p2, "\\\\"

    .line 33
    :cond_0
    new-instance v0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;

    invoke-direct {v0, p2, p3, p0}, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;-><init>(Ljava/lang/String;ILmeizu2_jcifs/dcerpc/msrpc/LsaPolicyHandle;)V

    .line 34
    .local v0, "rpc":Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;
    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu2_jcifs/dcerpc/DcerpcMessage;)V

    .line 35
    iget v1, v0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->retval:I

    if-eqz v1, :cond_1

    .line 36
    new-instance v1, Lmeizu2_jcifs/smb/SmbException;

    iget v2, v0, Lmeizu2_jcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->retval:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmeizu2_jcifs/smb/SmbException;-><init>(IZ)V

    throw v1

    .line 37
    :cond_1
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
