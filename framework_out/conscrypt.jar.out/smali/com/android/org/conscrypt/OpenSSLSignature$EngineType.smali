.class final enum Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
.super Ljava/lang/Enum;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field public static final enum DSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field public static final enum EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field public static final enum RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    const-string v1, "RSA"

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    const-string v1, "DSA"

    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->DSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    const-string v1, "EC"

    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->DSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    return-object v0
.end method
