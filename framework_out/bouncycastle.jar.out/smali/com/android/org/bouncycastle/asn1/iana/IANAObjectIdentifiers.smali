.class public interface abstract Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;
.super Ljava/lang/Object;
.source "IANAObjectIdentifiers.java"


# static fields
.field public static final SNMPv2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final _private:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final directory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final experimental:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final hmacMD5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final hmacRIPEMD160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final hmacSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final hmacTIGER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final internet:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ipsec:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final isakmpOakley:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mgmt:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final pkix:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final security:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final security_mechanisms:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final security_nametypes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->directory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->mgmt:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->experimental:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->_private:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->SNMPv2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->mail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security_mechanisms:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security_nametypes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security_mechanisms:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->pkix:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security_mechanisms:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->ipsec:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->ipsec:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->isakmpOakley:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->isakmpOakley:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacMD5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->isakmpOakley:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->isakmpOakley:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacTIGER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->isakmpOakley:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacRIPEMD160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
