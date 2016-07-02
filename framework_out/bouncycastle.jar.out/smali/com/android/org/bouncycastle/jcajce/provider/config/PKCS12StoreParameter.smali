.class public Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;
.super Ljava/lang/Object;
.source "PKCS12StoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final forDEREncoding:Z

.field private final out:Ljava/io/OutputStream;

.field private final protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p3, "forDEREncoding"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    .line 33
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 34
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;->forDEREncoding:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;[CZ)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "forDEREncoding"    # Z

    .prologue
    .line 27
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public isForDEREncoding()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;->forDEREncoding:Z

    return v0
.end method
