.class public final Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "OpenSSLECKeyPairGenerator.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final DEFAULT_KEY_SIZE:I = 0xc0

.field private static final SIZE_TO_CURVE_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    .line 39
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "prime192v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "secp224r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "prime256v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "secp384r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "secp521r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "EC"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    if-nez v2, :cond_0

    .line 55
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "curveName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 59
    .end local v0    # "curveName":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_generate_key(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 60
    .local v1, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v3, v4, v1}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V

    new-instance v4, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v4, v5, v1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V

    invoke-direct {v2, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 5
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 65
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown key size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 75
    .local v1, "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    if-nez v1, :cond_1

    .line 76
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown curve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_1
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 80
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 85
    instance-of v3, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 86
    check-cast v1, Ljava/security/spec/ECParameterSpec;

    .line 88
    .local v1, "ecParam":Ljava/security/spec/ECParameterSpec;
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 109
    .end local v1    # "ecParam":Ljava/security/spec/ECParameterSpec;
    :goto_0
    return-void

    .line 89
    :cond_0
    instance-of v3, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 90
    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    .line 92
    .local v1, "ecParam":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "curveName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    .line 100
    .local v2, "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    if-nez v2, :cond_1

    .line 101
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown curve name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_1
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    goto :goto_0

    .line 106
    .end local v0    # "curveName":Ljava/lang/String;
    .end local v1    # "ecParam":Ljava/security/spec/ECGenParameterSpec;
    .end local v2    # "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :cond_2
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "parameter must be ECParameterSpec or ECGenParameterSpec"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
