.class public final enum Lmeizu/os/DeviceStateManager$RemoteHandle;
.super Ljava/lang/Enum;
.source "DeviceStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/os/DeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoteHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmeizu/os/DeviceStateManager$RemoteHandle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmeizu/os/DeviceStateManager$RemoteHandle;

.field public static final enum Lock:Lmeizu/os/DeviceStateManager$RemoteHandle;

.field public static final enum Lock_Report_Loss:Lmeizu/os/DeviceStateManager$RemoteHandle;

.field public static final enum None:Lmeizu/os/DeviceStateManager$RemoteHandle;

.field public static final enum Root:Lmeizu/os/DeviceStateManager$RemoteHandle;

.field public static final enum Unlock:Lmeizu/os/DeviceStateManager$RemoteHandle;

.field public static final enum Unroot:Lmeizu/os/DeviceStateManager$RemoteHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lmeizu/os/DeviceStateManager$RemoteHandle;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lmeizu/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmeizu/os/DeviceStateManager$RemoteHandle;->None:Lmeizu/os/DeviceStateManager$RemoteHandle;

    new-instance v0, Lmeizu/os/DeviceStateManager$RemoteHandle;

    const-string v1, "Root"

    invoke-direct {v0, v1, v4}, Lmeizu/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmeizu/os/DeviceStateManager$RemoteHandle;->Root:Lmeizu/os/DeviceStateManager$RemoteHandle;

    new-instance v0, Lmeizu/os/DeviceStateManager$RemoteHandle;

    const-string v1, "Unroot"

    invoke-direct {v0, v1, v5}, Lmeizu/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmeizu/os/DeviceStateManager$RemoteHandle;->Unroot:Lmeizu/os/DeviceStateManager$RemoteHandle;

    new-instance v0, Lmeizu/os/DeviceStateManager$RemoteHandle;

    const-string v1, "Lock"

    invoke-direct {v0, v1, v6}, Lmeizu/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmeizu/os/DeviceStateManager$RemoteHandle;->Lock:Lmeizu/os/DeviceStateManager$RemoteHandle;

    new-instance v0, Lmeizu/os/DeviceStateManager$RemoteHandle;

    const-string v1, "Lock_Report_Loss"

    invoke-direct {v0, v1, v7}, Lmeizu/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmeizu/os/DeviceStateManager$RemoteHandle;->Lock_Report_Loss:Lmeizu/os/DeviceStateManager$RemoteHandle;

    new-instance v0, Lmeizu/os/DeviceStateManager$RemoteHandle;

    const-string v1, "Unlock"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmeizu/os/DeviceStateManager$RemoteHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmeizu/os/DeviceStateManager$RemoteHandle;->Unlock:Lmeizu/os/DeviceStateManager$RemoteHandle;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lmeizu/os/DeviceStateManager$RemoteHandle;

    sget-object v1, Lmeizu/os/DeviceStateManager$RemoteHandle;->None:Lmeizu/os/DeviceStateManager$RemoteHandle;

    aput-object v1, v0, v3

    sget-object v1, Lmeizu/os/DeviceStateManager$RemoteHandle;->Root:Lmeizu/os/DeviceStateManager$RemoteHandle;

    aput-object v1, v0, v4

    sget-object v1, Lmeizu/os/DeviceStateManager$RemoteHandle;->Unroot:Lmeizu/os/DeviceStateManager$RemoteHandle;

    aput-object v1, v0, v5

    sget-object v1, Lmeizu/os/DeviceStateManager$RemoteHandle;->Lock:Lmeizu/os/DeviceStateManager$RemoteHandle;

    aput-object v1, v0, v6

    sget-object v1, Lmeizu/os/DeviceStateManager$RemoteHandle;->Lock_Report_Loss:Lmeizu/os/DeviceStateManager$RemoteHandle;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmeizu/os/DeviceStateManager$RemoteHandle;->Unlock:Lmeizu/os/DeviceStateManager$RemoteHandle;

    aput-object v2, v0, v1

    sput-object v0, Lmeizu/os/DeviceStateManager$RemoteHandle;->$VALUES:[Lmeizu/os/DeviceStateManager$RemoteHandle;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmeizu/os/DeviceStateManager$RemoteHandle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lmeizu/os/DeviceStateManager$RemoteHandle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmeizu/os/DeviceStateManager$RemoteHandle;

    return-object v0
.end method

.method public static values()[Lmeizu/os/DeviceStateManager$RemoteHandle;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lmeizu/os/DeviceStateManager$RemoteHandle;->$VALUES:[Lmeizu/os/DeviceStateManager$RemoteHandle;

    invoke-virtual {v0}, [Lmeizu/os/DeviceStateManager$RemoteHandle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmeizu/os/DeviceStateManager$RemoteHandle;

    return-object v0
.end method
