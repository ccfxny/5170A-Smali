.class public Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo200;
.super Lmeizu2_jcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsInfo200"
.end annotation


# instance fields
.field public dfs_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .param p1, "_src"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 272
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 274
    .local v0, "_dfs_namep":I
    if-eqz v0, :cond_0

    .line 275
    iget-object p1, p1, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;

    .line 276
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo200;->dfs_name:Ljava/lang/String;

    .line 279
    :cond_0
    return-void
.end method

.method public encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .param p1, "_dst"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 262
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo200;->dfs_name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 264
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo200;->dfs_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 265
    iget-object p1, p1, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;

    .line 266
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo200;->dfs_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method
