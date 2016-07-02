.class public Lcom/android/ims/internal/ImsCallSession$State;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ESTABLISHED:I = 0x4

.field public static final ESTABLISHING:I = 0x3

.field public static final IDLE:I = 0x0

.field public static final INITIATED:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final NEGOTIATING:I = 0x2

.field public static final REESTABLISHING:I = 0x6

.field public static final RENEGOTIATING:I = 0x5

.field public static final TERMINATED:I = 0x8

.field public static final TERMINATING:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 58
    packed-switch p0, :pswitch_data_0

    .line 78
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    .line 62
    :pswitch_1
    const-string v0, "INITIATED"

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v0, "NEGOTIATING"

    goto :goto_0

    .line 66
    :pswitch_3
    const-string v0, "ESTABLISHING"

    goto :goto_0

    .line 68
    :pswitch_4
    const-string v0, "ESTABLISHED"

    goto :goto_0

    .line 70
    :pswitch_5
    const-string v0, "RENEGOTIATING"

    goto :goto_0

    .line 72
    :pswitch_6
    const-string v0, "REESTABLISHING"

    goto :goto_0

    .line 74
    :pswitch_7
    const-string v0, "TERMINATING"

    goto :goto_0

    .line 76
    :pswitch_8
    const-string v0, "TERMINATED"

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
