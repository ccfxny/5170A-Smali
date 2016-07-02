.class Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$ECB$1;
.super Ljava/lang/Object;
.source "AES.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$ECB;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    return-object v0
.end method
