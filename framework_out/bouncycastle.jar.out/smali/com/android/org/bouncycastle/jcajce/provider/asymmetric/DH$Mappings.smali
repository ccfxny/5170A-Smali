.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "DH.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .prologue
    .line 26
    const-string v1, "KeyPairGenerator.DH"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dh.KeyPairGeneratorSpi"

    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "Alg.Alias.KeyPairGenerator.DIFFIEHELLMAN"

    const-string v2, "DH"

    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "KeyAgreement.DH"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dh.KeyAgreementSpi"

    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "Alg.Alias.KeyAgreement.DIFFIEHELLMAN"

    const-string v2, "DH"

    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "KeyFactory.DH"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dh.KeyFactorySpi"

    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "Alg.Alias.KeyFactory.DIFFIEHELLMAN"

    const-string v2, "DH"

    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;-><init>()V

    .line 36
    .local v0, "keyFact":Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DH"

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH$Mappings;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 39
    const-string v1, "AlgorithmParameters.DH"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dh.AlgorithmParametersSpi"

    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "Alg.Alias.AlgorithmParameters.DIFFIEHELLMAN"

    const-string v2, "DH"

    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "Alg.Alias.AlgorithmParameterGenerator.DIFFIEHELLMAN"

    const-string v2, "DH"

    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "AlgorithmParameterGenerator.DH"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dh.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
