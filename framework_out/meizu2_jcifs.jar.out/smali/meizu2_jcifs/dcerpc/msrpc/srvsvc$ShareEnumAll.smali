.class public Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;
.super Lmeizu2_jcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareEnumAll"
.end annotation


# instance fields
.field public info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

.field public level:I

.field public prefmaxlen:I

.field public resume_handle:I

.field public retval:I

.field public servername:Ljava/lang/String;

.field public totalentries:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmeizu2_jcifs/dcerpc/ndr/NdrObject;III)V
    .locals 0
    .param p1, "servername"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "info"    # Lmeizu2_jcifs/dcerpc/ndr/NdrObject;
    .param p4, "prefmaxlen"    # I
    .param p5, "totalentries"    # I
    .param p6, "resume_handle"    # I

    .prologue
    .line 350
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 351
    iput-object p1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    .line 352
    iput p2, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 353
    iput-object p3, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    .line 354
    iput p4, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->prefmaxlen:I

    .line 355
    iput p5, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->totalentries:I

    .line 356
    iput p6, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    .line 357
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
    .line 378
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 379
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 380
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 381
    .local v0, "_infop":I
    if-eqz v0, :cond_1

    .line 382
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;

    invoke-direct {v1}, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;-><init>()V

    iput-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    .line 385
    :cond_0
    iget-object p1, p1, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;

    .line 386
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrObject;->decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 389
    :cond_1
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->totalentries:I

    .line 390
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    .line 391
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    .line 392
    return-void
.end method

.method public encode_in(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3
    .param p1, "_dst"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 360
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 361
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 365
    :cond_0
    iget v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    invoke-virtual {p1, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 366
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 367
    .local v0, "_descr":I
    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 368
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {p1, v1, v2}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 369
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    if-eqz v1, :cond_1

    .line 370
    iget-object p1, p1, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;

    .line 371
    iget-object v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Lmeizu2_jcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrObject;->encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 374
    :cond_1
    iget v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->prefmaxlen:I

    invoke-virtual {p1, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 375
    iget v1, p0, Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    invoke-virtual {p1, v1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 376
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 335
    const/16 v0, 0xf

    return v0
.end method
