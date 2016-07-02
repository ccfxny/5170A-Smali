.class public final enum Lcom/meizu/widget/PreferenceFrame$State;
.super Ljava/lang/Enum;
.source "PreferenceFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/PreferenceFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/widget/PreferenceFrame$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/widget/PreferenceFrame$State;

.field public static final enum CLOSE:Lcom/meizu/widget/PreferenceFrame$State;

.field public static final enum OPEN:Lcom/meizu/widget/PreferenceFrame$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/meizu/widget/PreferenceFrame$State;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/PreferenceFrame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/PreferenceFrame$State;->OPEN:Lcom/meizu/widget/PreferenceFrame$State;

    new-instance v0, Lcom/meizu/widget/PreferenceFrame$State;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v3}, Lcom/meizu/widget/PreferenceFrame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/PreferenceFrame$State;->CLOSE:Lcom/meizu/widget/PreferenceFrame$State;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/widget/PreferenceFrame$State;

    sget-object v1, Lcom/meizu/widget/PreferenceFrame$State;->OPEN:Lcom/meizu/widget/PreferenceFrame$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/widget/PreferenceFrame$State;->CLOSE:Lcom/meizu/widget/PreferenceFrame$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/meizu/widget/PreferenceFrame$State;->$VALUES:[Lcom/meizu/widget/PreferenceFrame$State;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/widget/PreferenceFrame$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/meizu/widget/PreferenceFrame$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/PreferenceFrame$State;

    return-object v0
.end method

.method public static values()[Lcom/meizu/widget/PreferenceFrame$State;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/meizu/widget/PreferenceFrame$State;->$VALUES:[Lcom/meizu/widget/PreferenceFrame$State;

    invoke-virtual {v0}, [Lcom/meizu/widget/PreferenceFrame$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/widget/PreferenceFrame$State;

    return-object v0
.end method
