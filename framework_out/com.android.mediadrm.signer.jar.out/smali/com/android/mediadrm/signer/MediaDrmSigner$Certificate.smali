.class public final Lcom/android/mediadrm/signer/MediaDrmSigner$Certificate;
.super Ljava/lang/Object;
.source "MediaDrmSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mediadrm/signer/MediaDrmSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Certificate"
.end annotation


# instance fields
.field private final mCertificate:Landroid/media/MediaDrm$Certificate;


# direct methods
.method constructor <init>(Landroid/media/MediaDrm$Certificate;)V
    .locals 0
    .param p1, "certificate"    # Landroid/media/MediaDrm$Certificate;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/mediadrm/signer/MediaDrmSigner$Certificate;->mCertificate:Landroid/media/MediaDrm$Certificate;

    .line 71
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mediadrm/signer/MediaDrmSigner$Certificate;->mCertificate:Landroid/media/MediaDrm$Certificate;

    invoke-virtual {v0}, Landroid/media/MediaDrm$Certificate;->getContent()[B

    move-result-object v0

    return-object v0
.end method

.method public getWrappedPrivateKey()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mediadrm/signer/MediaDrmSigner$Certificate;->mCertificate:Landroid/media/MediaDrm$Certificate;

    invoke-virtual {v0}, Landroid/media/MediaDrm$Certificate;->getWrappedPrivateKey()[B

    move-result-object v0

    return-object v0
.end method
