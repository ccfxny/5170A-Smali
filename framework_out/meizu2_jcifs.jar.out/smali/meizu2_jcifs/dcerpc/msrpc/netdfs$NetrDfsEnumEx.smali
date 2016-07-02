.class public Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;
.super Lmeizu2_jcifs/dcerpc/DcerpcMessage;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetrDfsEnumEx"
.end annotation


# instance fields
.field public dfs_name:Ljava/lang/String;

.field public info:Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

.field public level:I

.field public prefmaxlen:I

.field public retval:I

.field public totalentries:Lmeizu2_jcifs/dcerpc/ndr/NdrLong;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;Lmeizu2_jcifs/dcerpc/ndr/NdrLong;)V
    .locals 0
    .param p1, "dfs_name"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "prefmaxlen"    # I
    .param p4, "info"    # Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;
    .param p5, "totalentries"    # Lmeizu2_jcifs/dcerpc/ndr/NdrLong;

    .prologue
    .line 454
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 455
    iput-object p1, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->dfs_name:Ljava/lang/String;

    .line 456
    iput p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->level:I

    .line 457
    iput p3, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->prefmaxlen:I

    .line 458
    iput-object p4, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 459
    iput-object p5, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Lmeizu2_jcifs/dcerpc/ndr/NdrLong;

    .line 460
    return-void
.end method


# virtual methods
.method public decode_out(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3
    .param p1, "_src"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 479
    .local v0, "_infop":I
    if-eqz v0, :cond_1

    .line 480
    iget-object v2, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    if-nez v2, :cond_0

    .line 481
    new-instance v2, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-direct {v2}, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;-><init>()V

    iput-object v2, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    .line 483
    :cond_0
    iget-object v2, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-virtual {v2, p1}, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 486
    :cond_1
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 487
    .local v1, "_totalentriesp":I
    if-eqz v1, :cond_2

    .line 488
    iget-object v2, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Lmeizu2_jcifs/dcerpc/ndr/NdrLong;

    invoke-virtual {v2, p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrLong;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 491
    :cond_2
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    .line 492
    return-void
.end method

.method public encode_in(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .param p1, "_dst"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 463
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->dfs_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 464
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->level:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 465
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->prefmaxlen:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 466
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-virtual {p1, v0, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 467
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->info:Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Lmeizu2_jcifs/dcerpc/ndr/NdrLong;

    invoke-virtual {p1, v0, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 472
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Lmeizu2_jcifs/dcerpc/ndr/NdrLong;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->totalentries:Lmeizu2_jcifs/dcerpc/ndr/NdrLong;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrLong;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 476
    :cond_1
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 441
    const/16 v0, 0x15

    return v0
.end method
