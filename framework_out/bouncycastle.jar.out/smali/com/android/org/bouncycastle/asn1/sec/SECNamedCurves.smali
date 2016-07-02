.class public Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;
.super Ljava/lang/Object;
.source "SECNamedCurves.java"


# static fields
.field static final curves:Ljava/util/Hashtable;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;

.field static secp112r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp112r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp128r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp128r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect233k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect233r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect239k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect283k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect283r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect409k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect409r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect571k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect571r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$1;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$2;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$3;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 120
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$4;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 146
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$5;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 172
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$6;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 198
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$7;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 224
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$8;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 250
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$9;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$9;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 276
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$10;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$10;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 302
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$11;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$11;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 328
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$12;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$12;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 354
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$13;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$13;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 380
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$14;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$14;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 406
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$15;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$15;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 433
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$16;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$16;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 460
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$17;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$17;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 487
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$18;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$18;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 516
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$19;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$19;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 545
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$20;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$20;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 574
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$21;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$21;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 603
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$22;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$22;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 632
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$23;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$23;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 659
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$24;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$24;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 686
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$25;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$25;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 713
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$26;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$26;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 740
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$27;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$27;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 767
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$28;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$28;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 796
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$29;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$29;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 825
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$30;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$30;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 852
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$31;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$31;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 879
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$32;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$32;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 908
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$33;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$33;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 935
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 936
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    .line 937
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    .line 948
    const-string v0, "secp112r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 949
    const-string v0, "secp112r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 950
    const-string v0, "secp128r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 951
    const-string v0, "secp128r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 952
    const-string v0, "secp160k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 953
    const-string v0, "secp160r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 954
    const-string v0, "secp160r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 955
    const-string v0, "secp192k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 956
    const-string v0, "secp192r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 957
    const-string v0, "secp224k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 958
    const-string v0, "secp224r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 959
    const-string v0, "secp256k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 960
    const-string v0, "secp256r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 961
    const-string v0, "secp384r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 962
    const-string v0, "secp521r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 964
    const-string v0, "sect113r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 965
    const-string v0, "sect113r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 966
    const-string v0, "sect131r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 967
    const-string v0, "sect131r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 968
    const-string v0, "sect163k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 969
    const-string v0, "sect163r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 970
    const-string v0, "sect163r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 971
    const-string v0, "sect193r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 972
    const-string v0, "sect193r2"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 973
    const-string v0, "sect233k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 974
    const-string v0, "sect233r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 975
    const-string v0, "sect239k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 976
    const-string v0, "sect283k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 977
    const-string v0, "sect283r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 978
    const-string v0, "sect409k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 979
    const-string v0, "sect409r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 980
    const-string v0, "sect571k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 981
    const-string v0, "sect571r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 982
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method private static configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 0
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    .line 30
    return-object p0
.end method

.method static defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .prologue
    .line 941
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    return-void
.end method

.method private static fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 987
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 989
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_0

    .line 991
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 994
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 1006
    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1008
    .local v0, "holder":Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 1013
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 1034
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1043
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1025
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
