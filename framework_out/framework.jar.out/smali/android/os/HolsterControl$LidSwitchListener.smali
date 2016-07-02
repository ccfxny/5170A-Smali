.class final Landroid/os/HolsterControl$LidSwitchListener;
.super Ljava/lang/Object;
.source "HolsterControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HolsterControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LidSwitchListener"
.end annotation


# instance fields
.field mCallback:Landroid/hardware/input/ILidSwitchCallback;

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/os/HolsterControl;


# direct methods
.method constructor <init>(Landroid/os/HolsterControl;Landroid/hardware/input/ILidSwitchCallback;Ljava/lang/String;)V
    .locals 0
    .param p2, "callback"    # Landroid/hardware/input/ILidSwitchCallback;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Landroid/os/HolsterControl$LidSwitchListener;->this$0:Landroid/os/HolsterControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p3, p0, Landroid/os/HolsterControl$LidSwitchListener;->mTag:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/os/HolsterControl$LidSwitchListener;->mCallback:Landroid/hardware/input/ILidSwitchCallback;

    .line 50
    return-void
.end method
