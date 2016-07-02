.class public Lcom/android/commands/monkey/MonkeyTrackballEvent;
.super Lcom/android/commands/monkey/MonkeyMotionEvent;
.source "MonkeyTrackballEvent.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 26
    const/4 v0, 0x2

    const v1, 0x10004

    invoke-direct {p0, v0, v1, p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(III)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getTypeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "Trackball"

    return-object v0
.end method
