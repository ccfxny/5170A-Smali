.class public final Lcom/android/mediadrm/signer/MediaDrmSigner;
.super Ljava/lang/Object;
.source "MediaDrmSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mediadrm/signer/MediaDrmSigner$Certificate;,
        Lcom/android/mediadrm/signer/MediaDrmSigner$CertificateRequest;
    }
.end annotation


# static fields
.field public static final CERTIFICATE_TYPE_X509:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCertificateRequest(Landroid/media/MediaDrm;ILjava/lang/String;)Lcom/android/mediadrm/signer/MediaDrmSigner$CertificateRequest;
    .locals 2
    .param p0, "drm"    # Landroid/media/MediaDrm;
    .param p1, "certType"    # I
    .param p2, "certAuthority"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lcom/android/mediadrm/signer/MediaDrmSigner$CertificateRequest;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDrm;->getCertificateRequest(ILjava/lang/String;)Landroid/media/MediaDrm$CertificateRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mediadrm/signer/MediaDrmSigner$CertificateRequest;-><init>(Landroid/media/MediaDrm$CertificateRequest;)V

    return-object v0
.end method

.method public static provideCertificateResponse(Landroid/media/MediaDrm;[B)Lcom/android/mediadrm/signer/MediaDrmSigner$Certificate;
    .locals 2
    .param p0, "drm"    # Landroid/media/MediaDrm;
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/android/mediadrm/signer/MediaDrmSigner$Certificate;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->provideCertificateResponse([B)Landroid/media/MediaDrm$Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mediadrm/signer/MediaDrmSigner$Certificate;-><init>(Landroid/media/MediaDrm$Certificate;)V

    return-object v0
.end method

.method public static signRSA(Landroid/media/MediaDrm;[BLjava/lang/String;[B[B)[B
    .locals 1
    .param p0, "drm"    # Landroid/media/MediaDrm;
    .param p1, "sessionId"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "wrappedKey"    # [B
    .param p4, "message"    # [B

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->signRSA([BLjava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method
