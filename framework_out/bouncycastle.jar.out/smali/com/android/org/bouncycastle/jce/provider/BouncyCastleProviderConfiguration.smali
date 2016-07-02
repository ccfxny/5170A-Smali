.class Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;
.source "BouncyCastleProviderConfiguration.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# static fields
.field private static BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_DH_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_PERMISSION:Ljava/security/Permission;


# instance fields
.field private volatile dhDefaultParams:Ljava/lang/Object;

.field private dhThreadSpec:Ljava/lang/ThreadLocal;

.field private volatile ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

.field private ecThreadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "threadLocalDhDefaultParams"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "DhDefaultParams"

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
    .locals 5
    .param p1, "keySize"    # I

    .prologue
    .line 137
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "params":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    .line 143
    :cond_0
    instance-of v4, v1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v4, :cond_1

    move-object v2, v1

    .line 145
    check-cast v2, Ljavax/crypto/spec/DHParameterSpec;

    .line 147
    .local v2, "spec":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 165
    .end local v1    # "params":Ljava/lang/Object;
    .end local v2    # "spec":Ljavax/crypto/spec/DHParameterSpec;
    :goto_0
    return-object v2

    .line 152
    .restart local v1    # "params":Ljava/lang/Object;
    :cond_1
    instance-of v4, v1, [Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v4, :cond_3

    .line 154
    check-cast v1, [Ljavax/crypto/spec/DHParameterSpec;

    .end local v1    # "params":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, [Ljavax/crypto/spec/DHParameterSpec;

    .line 156
    .local v3, "specs":[Ljavax/crypto/spec/DHParameterSpec;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-eq v0, v4, :cond_3

    .line 158
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 160
    aget-object v2, v3, v0

    goto :goto_0

    .line 156
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "i":I
    .end local v3    # "specs":[Ljavax/crypto/spec/DHParameterSpec;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 127
    .local v0, "spec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_0

    .line 132
    .end local v0    # "spec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_0
    return-object v0

    .restart local v0    # "spec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_0
.end method

.method setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 35
    .local v2, "securityManager":Ljava/lang/SecurityManager;
    const-string v3, "threadLocalEcImplicitlyCa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 39
    if-eqz v2, :cond_0

    .line 41
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 44
    :cond_0
    instance-of v3, p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v3, :cond_1

    if-nez p2, :cond_3

    :cond_1
    move-object v0, p2

    .line 46
    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 53
    .end local p2    # "parameter":Ljava/lang/Object;
    .local v0, "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_0
    if-nez v0, :cond_4

    .line 55
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 121
    .end local v0    # "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    :goto_1
    return-void

    .line 50
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_3
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    .end local p2    # "parameter":Ljava/lang/Object;
    invoke-static {p2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .restart local v0    # "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    goto :goto_0

    .line 59
    :cond_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 62
    .end local v0    # "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_5
    const-string v3, "ecImplicitlyCa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 64
    if-eqz v2, :cond_6

    .line 66
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 69
    :cond_6
    instance-of v3, p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v3, :cond_7

    if-nez p2, :cond_8

    .line 71
    :cond_7
    check-cast p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .end local p2    # "parameter":Ljava/lang/Object;
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_1

    .line 75
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_8
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    .end local p2    # "parameter":Ljava/lang/Object;
    invoke-static {p2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_1

    .line 78
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_9
    const-string v3, "threadLocalDhDefaultParams"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 82
    if-eqz v2, :cond_a

    .line 84
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 87
    :cond_a
    instance-of v3, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_b

    instance-of v3, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_b

    if-nez p2, :cond_c

    .line 89
    :cond_b
    move-object v1, p2

    .line 96
    .local v1, "dhSpec":Ljava/lang/Object;
    if-nez v1, :cond_d

    .line 98
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    .line 93
    .end local v1    # "dhSpec":Ljava/lang/Object;
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "not a valid DHParameterSpec"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    .restart local v1    # "dhSpec":Ljava/lang/Object;
    :cond_d
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 105
    .end local v1    # "dhSpec":Ljava/lang/Object;
    :cond_e
    const-string v3, "DhDefaultParams"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    if-eqz v2, :cond_f

    .line 109
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 112
    :cond_f
    instance-of v3, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_10

    instance-of v3, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_10

    if-nez p2, :cond_11

    .line 114
    :cond_10
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    goto :goto_1

    .line 118
    :cond_11
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "not a valid DHParameterSpec or DHParameterSpec[]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
