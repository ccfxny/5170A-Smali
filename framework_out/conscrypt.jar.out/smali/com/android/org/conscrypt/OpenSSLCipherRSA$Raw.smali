.class public Lcom/android/org/conscrypt/OpenSSLCipherRSA$Raw;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Raw"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    .line 355
    return-void
.end method
