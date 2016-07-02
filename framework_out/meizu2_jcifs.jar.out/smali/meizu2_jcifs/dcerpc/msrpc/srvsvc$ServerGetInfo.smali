.class public Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;
.super Lmeizu2_jcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerGetInfo"
.end annotation


# instance fields
.field public info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

.field public level:I

.field public retval:I

.field public servername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmeizu2_jcifs/dcerpc/ndr/NdrObject;)V
    .locals 0
    .param p1, "servername"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "info"    # Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    .prologue
    .line 474
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 475
    iput-object p1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    .line 476
    iput p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->level:I

    .line 477
    iput-object p3, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    .line 478
    return-void
.end method


# virtual methods
.method public decode_out(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .param p1, "_src"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 490
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 491
    .local v0, "_infop":I
    if-eqz v0, :cond_1

    .line 492
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    if-nez v1, :cond_0

    .line 493
    new-instance v1, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerInfo100;

    invoke-direct {v1}, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerInfo100;-><init>()V

    iput-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    .line 495
    :cond_0
    iget-object p1, p1, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;

    .line 496
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrObject;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 499
    :cond_1
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->retval:I

    .line 500
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
    .line 481
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 482
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->servername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 486
    :cond_0
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;->level:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 487
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 467
    const/16 v0, 0x15

    return v0
.end method
