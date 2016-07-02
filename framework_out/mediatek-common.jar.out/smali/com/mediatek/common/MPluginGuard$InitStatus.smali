.class final enum Lcom/mediatek/common/MPluginGuard$InitStatus;
.super Ljava/lang/Enum;
.source "MPluginGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/MPluginGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/common/MPluginGuard$InitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/common/MPluginGuard$InitStatus;

.field public static final enum FAILED:Lcom/mediatek/common/MPluginGuard$InitStatus;

.field public static final enum NONE:Lcom/mediatek/common/MPluginGuard$InitStatus;

.field public static final enum RUNNING:Lcom/mediatek/common/MPluginGuard$InitStatus;

.field public static final enum SUCCESS:Lcom/mediatek/common/MPluginGuard$InitStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/mediatek/common/MPluginGuard$InitStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/common/MPluginGuard$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/MPluginGuard$InitStatus;->NONE:Lcom/mediatek/common/MPluginGuard$InitStatus;

    new-instance v0, Lcom/mediatek/common/MPluginGuard$InitStatus;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/common/MPluginGuard$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/MPluginGuard$InitStatus;->RUNNING:Lcom/mediatek/common/MPluginGuard$InitStatus;

    new-instance v0, Lcom/mediatek/common/MPluginGuard$InitStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/common/MPluginGuard$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/MPluginGuard$InitStatus;->SUCCESS:Lcom/mediatek/common/MPluginGuard$InitStatus;

    new-instance v0, Lcom/mediatek/common/MPluginGuard$InitStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/common/MPluginGuard$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/MPluginGuard$InitStatus;->FAILED:Lcom/mediatek/common/MPluginGuard$InitStatus;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/common/MPluginGuard$InitStatus;

    sget-object v1, Lcom/mediatek/common/MPluginGuard$InitStatus;->NONE:Lcom/mediatek/common/MPluginGuard$InitStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/common/MPluginGuard$InitStatus;->RUNNING:Lcom/mediatek/common/MPluginGuard$InitStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/common/MPluginGuard$InitStatus;->SUCCESS:Lcom/mediatek/common/MPluginGuard$InitStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/common/MPluginGuard$InitStatus;->FAILED:Lcom/mediatek/common/MPluginGuard$InitStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/common/MPluginGuard$InitStatus;->$VALUES:[Lcom/mediatek/common/MPluginGuard$InitStatus;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/common/MPluginGuard$InitStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/mediatek/common/MPluginGuard$InitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/MPluginGuard$InitStatus;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/common/MPluginGuard$InitStatus;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/mediatek/common/MPluginGuard$InitStatus;->$VALUES:[Lcom/mediatek/common/MPluginGuard$InitStatus;

    invoke-virtual {v0}, [Lcom/mediatek/common/MPluginGuard$InitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/common/MPluginGuard$InitStatus;

    return-object v0
.end method
