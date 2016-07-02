.class Lcom/android/server/AlarmAlignManager$2;
.super Landroid/os/Handler;
.source "AlarmAlignManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmAlignManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmAlignManager;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmAlignManager;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/server/AlarmAlignManager$2;->this$0:Lcom/android/server/AlarmAlignManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    .line 402
    return-void
.end method
