.class public final enum Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
.super Ljava/lang/Enum;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Padding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLCipher$Padding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

.field public static final enum ISO10126PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

.field public static final enum NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

.field public static final enum PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    const-string v1, "NOPADDING"

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 66
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    const-string v1, "PKCS5PADDING"

    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 67
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    const-string v1, "ISO10126PADDING"

    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ISO10126PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ISO10126PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method
