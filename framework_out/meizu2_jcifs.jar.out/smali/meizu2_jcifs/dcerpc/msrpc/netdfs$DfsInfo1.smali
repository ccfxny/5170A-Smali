.class public Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;
.super Lmeizu2_jcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsInfo1"
.end annotation


# instance fields
.field public entry_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
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
    .line 32
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 33
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 35
    .local v0, "_entry_pathp":I
    if-eqz v0, :cond_0

    .line 36
    iget-object p1, p1, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;

    .line 37
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;->entry_path:Ljava/lang/String;

    .line 40
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
    .line 22
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 23
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;->entry_path:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 25
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;->entry_path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 26
    iget-object p1, p1, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;

    .line 27
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;->entry_path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
