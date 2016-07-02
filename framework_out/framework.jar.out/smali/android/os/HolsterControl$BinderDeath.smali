.class final Landroid/os/HolsterControl$BinderDeath;
.super Ljava/lang/Object;
.source "HolsterControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HolsterControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderDeath"
.end annotation


# instance fields
.field private mListener:Landroid/os/HolsterControl$LidSwitchListener;

.field private mTag:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Landroid/os/HolsterControl;


# direct methods
.method constructor <init>(Landroid/os/HolsterControl;Ljava/lang/String;ILandroid/os/HolsterControl$LidSwitchListener;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "listener"    # Landroid/os/HolsterControl$LidSwitchListener;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/os/HolsterControl$BinderDeath;->this$0:Landroid/os/HolsterControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Landroid/os/HolsterControl$BinderDeath;->mTag:Ljava/lang/String;

    .line 132
    iput p3, p0, Landroid/os/HolsterControl$BinderDeath;->mUid:I

    .line 133
    iput-object p4, p0, Landroid/os/HolsterControl$BinderDeath;->mListener:Landroid/os/HolsterControl$LidSwitchListener;

    .line 134
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/os/HolsterControl$BinderDeath;->this$0:Landroid/os/HolsterControl;

    iget-object v0, v0, Landroid/os/HolsterControl;->mListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/os/HolsterControl$BinderDeath;->mListener:Landroid/os/HolsterControl$LidSwitchListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    monitor-exit p0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
