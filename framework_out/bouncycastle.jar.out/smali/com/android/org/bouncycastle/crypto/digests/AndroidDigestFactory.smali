.class public final Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;
.super Ljava/lang/Object;
.source "AndroidDigestFactory.java"


# static fields
.field private static final BouncyCastleFactoryClassName:Ljava/lang/String;

.field private static final FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

.field private static final OpenSSLFactoryClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OpenSSL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BouncyCastle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    .line 35
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 37
    .local v3, "factoryImplementationClass":Ljava/lang/Class;
    const-string v4, "com.android.org.conscrypt.NativeCrypto"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    const-class v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "does not implement AndroidDigestFactoryInterface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 38
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    :try_start_1
    sget-object v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 41
    :catch_1
    move-exception v2

    .line 42
    .local v2, "e2":Ljava/lang/ClassNotFoundException;
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load AndroidDigestFactoryInterface implementation. Looked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 47
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-virtual {v0, v1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 48
    throw v0

    .line 56
    .end local v0    # "e":Ljava/lang/AssertionError;
    .end local v1    # "e1":Ljava/lang/ClassNotFoundException;
    .end local v2    # "e2":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    sput-object v4, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 62
    return-void

    .line 57
    :catch_2
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 59
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method
