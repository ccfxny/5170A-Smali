.class Lcom/android/org/conscrypt/Platform$OpenSSLMapper;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lorg/apache/harmony/security/utils/AlgNameMapperSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenSSLMapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/Platform$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/conscrypt/Platform$1;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/org/conscrypt/Platform$OpenSSLMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public mapNameToOid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "algName"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->OBJ_txt2nid_oid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mapOidToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->OBJ_txt2nid_longName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
