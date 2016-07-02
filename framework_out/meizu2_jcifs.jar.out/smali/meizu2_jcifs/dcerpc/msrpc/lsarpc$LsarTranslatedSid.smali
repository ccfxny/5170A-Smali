.class public Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;
.super Lmeizu2_jcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTranslatedSid"
.end annotation


# instance fields
.field public rid:I

.field public sid_index:I

.field public sid_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Lmeizu2_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .param p1, "_src"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 471
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->sid_type:I

    .line 472
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->rid:I

    .line 473
    invoke-virtual {p1}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->sid_index:I

    .line 475
    return-void
.end method

.method public encode(Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .param p1, "_dst"    # Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 464
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->sid_type:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 465
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->rid:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 466
    iget v0, p0, Lmeizu2_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->sid_index:I

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 468
    return-void
.end method
