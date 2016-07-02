.class final enum Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
.super Ljava/lang/Enum;
.source "OpenSSLX509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLX509CertPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;


# instance fields
.field private final apiName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    const-string v1, "PKI_PATH"

    const-string v2, "PkiPath"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 47
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    const-string v1, "PKCS7"

    const-string v2, "PKCS7"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    return-object v0
.end method

.method static findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 5
    .param p0, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 57
    .local v1, "element":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    iget-object v4, v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    .end local v1    # "element":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    :goto_1
    return-object v1

    .line 56
    .restart local v1    # "element":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "element":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-object v0
.end method
