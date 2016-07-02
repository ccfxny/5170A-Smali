.class public interface abstract Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;
.super Ljava/lang/Object;
.source "EACObjectIdentifiers.java"


# static fields
.field public static final bsi_de:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_CA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_CA_DH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_CA_DH_3DES_CBC_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_CA_ECDH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_CA_ECDH_3DES_CBC_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_EAC_ePassport:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_PK:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_PK_DH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_PK_ECDH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_ECDSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_ECDSA_SHA_1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_ECDSA_SHA_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_ECDSA_SHA_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_ECDSA_SHA_384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_ECDSA_SHA_512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_RSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_RSA_PSS_SHA_1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_RSA_PSS_SHA_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_RSA_PSS_SHA_512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_RSA_v1_5_SHA_1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_RSA_v1_5_SHA_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_TA_RSA_v1_5_SHA_512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.4.0.127.0.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->bsi_de:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->bsi_de:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.2.1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_PK:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_PK:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_PK_DH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_PK:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_PK_ECDH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->bsi_de:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.2.3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA_DH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA_DH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA_DH_3DES_CBC_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA_ECDH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA_ECDH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_CA_ECDH_3DES_CBC_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->bsi_de:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.2.2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 79
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 99
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 109
    sget-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->bsi_de:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3.1.2.1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_EAC_ePassport:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
