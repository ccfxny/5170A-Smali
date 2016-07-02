.class public final enum Landroid/telephony/MzTelephonyManager$CardState;
.super Ljava/lang/Enum;
.source "MzTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MzTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/MzTelephonyManager$CardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/MzTelephonyManager$CardState;

.field public static final enum Disable:Landroid/telephony/MzTelephonyManager$CardState;

.field public static final enum Off:Landroid/telephony/MzTelephonyManager$CardState;

.field public static final enum On:Landroid/telephony/MzTelephonyManager$CardState;

.field public static final enum Unknown:Landroid/telephony/MzTelephonyManager$CardState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 338
    new-instance v0, Landroid/telephony/MzTelephonyManager$CardState;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Landroid/telephony/MzTelephonyManager$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MzTelephonyManager$CardState;->Unknown:Landroid/telephony/MzTelephonyManager$CardState;

    .line 339
    new-instance v0, Landroid/telephony/MzTelephonyManager$CardState;

    const-string v1, "Off"

    invoke-direct {v0, v1, v3}, Landroid/telephony/MzTelephonyManager$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MzTelephonyManager$CardState;->Off:Landroid/telephony/MzTelephonyManager$CardState;

    .line 340
    new-instance v0, Landroid/telephony/MzTelephonyManager$CardState;

    const-string v1, "Disable"

    invoke-direct {v0, v1, v4}, Landroid/telephony/MzTelephonyManager$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MzTelephonyManager$CardState;->Disable:Landroid/telephony/MzTelephonyManager$CardState;

    .line 341
    new-instance v0, Landroid/telephony/MzTelephonyManager$CardState;

    const-string v1, "On"

    invoke-direct {v0, v1, v5}, Landroid/telephony/MzTelephonyManager$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/MzTelephonyManager$CardState;->On:Landroid/telephony/MzTelephonyManager$CardState;

    .line 337
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/telephony/MzTelephonyManager$CardState;

    sget-object v1, Landroid/telephony/MzTelephonyManager$CardState;->Unknown:Landroid/telephony/MzTelephonyManager$CardState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/MzTelephonyManager$CardState;->Off:Landroid/telephony/MzTelephonyManager$CardState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/MzTelephonyManager$CardState;->Disable:Landroid/telephony/MzTelephonyManager$CardState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/MzTelephonyManager$CardState;->On:Landroid/telephony/MzTelephonyManager$CardState;

    aput-object v1, v0, v5

    sput-object v0, Landroid/telephony/MzTelephonyManager$CardState;->$VALUES:[Landroid/telephony/MzTelephonyManager$CardState;

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
    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/MzTelephonyManager$CardState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 337
    const-class v0, Landroid/telephony/MzTelephonyManager$CardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/MzTelephonyManager$CardState;

    return-object v0
.end method

.method public static values()[Landroid/telephony/MzTelephonyManager$CardState;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Landroid/telephony/MzTelephonyManager$CardState;->$VALUES:[Landroid/telephony/MzTelephonyManager$CardState;

    invoke-virtual {v0}, [Landroid/telephony/MzTelephonyManager$CardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/MzTelephonyManager$CardState;

    return-object v0
.end method
