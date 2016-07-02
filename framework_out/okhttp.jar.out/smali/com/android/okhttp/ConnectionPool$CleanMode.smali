.class final enum Lcom/android/okhttp/ConnectionPool$CleanMode;
.super Ljava/lang/Enum;
.source "ConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CleanMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/ConnectionPool$CleanMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/ConnectionPool$CleanMode;

.field public static final enum DRAINED:Lcom/android/okhttp/ConnectionPool$CleanMode;

.field public static final enum DRAINING:Lcom/android/okhttp/ConnectionPool$CleanMode;

.field public static final enum NORMAL:Lcom/android/okhttp/ConnectionPool$CleanMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/android/okhttp/ConnectionPool$CleanMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/ConnectionPool$CleanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/ConnectionPool$CleanMode;->NORMAL:Lcom/android/okhttp/ConnectionPool$CleanMode;

    .line 98
    new-instance v0, Lcom/android/okhttp/ConnectionPool$CleanMode;

    const-string v1, "DRAINING"

    invoke-direct {v0, v1, v3}, Lcom/android/okhttp/ConnectionPool$CleanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/ConnectionPool$CleanMode;->DRAINING:Lcom/android/okhttp/ConnectionPool$CleanMode;

    .line 105
    new-instance v0, Lcom/android/okhttp/ConnectionPool$CleanMode;

    const-string v1, "DRAINED"

    invoke-direct {v0, v1, v4}, Lcom/android/okhttp/ConnectionPool$CleanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/ConnectionPool$CleanMode;->DRAINED:Lcom/android/okhttp/ConnectionPool$CleanMode;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/okhttp/ConnectionPool$CleanMode;

    sget-object v1, Lcom/android/okhttp/ConnectionPool$CleanMode;->NORMAL:Lcom/android/okhttp/ConnectionPool$CleanMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/okhttp/ConnectionPool$CleanMode;->DRAINING:Lcom/android/okhttp/ConnectionPool$CleanMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/okhttp/ConnectionPool$CleanMode;->DRAINED:Lcom/android/okhttp/ConnectionPool$CleanMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/okhttp/ConnectionPool$CleanMode;->$VALUES:[Lcom/android/okhttp/ConnectionPool$CleanMode;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/ConnectionPool$CleanMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/android/okhttp/ConnectionPool$CleanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/ConnectionPool$CleanMode;

    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/ConnectionPool$CleanMode;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/okhttp/ConnectionPool$CleanMode;->$VALUES:[Lcom/android/okhttp/ConnectionPool$CleanMode;

    invoke-virtual {v0}, [Lcom/android/okhttp/ConnectionPool$CleanMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/ConnectionPool$CleanMode;

    return-object v0
.end method
