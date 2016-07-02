.class public interface abstract Lcom/android/org/bouncycastle/asn1/cms/CMSAttributes;
.super Ljava/lang/Object;
.source "CMSAttributes.java"


# static fields
.field public static final contentHint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final counterSignature:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final messageDigest:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final signingTime:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_messageDigest:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_signingTime:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_counterSignature:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_contentHint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSAttributes;->contentHint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
