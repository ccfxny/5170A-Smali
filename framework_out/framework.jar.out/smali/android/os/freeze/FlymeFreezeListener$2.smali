.class Landroid/os/freeze/FlymeFreezeListener$2;
.super Landroid/os/Handler;
.source "FlymeFreezeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/freeze/FlymeFreezeListener;-><init>(Landroid/os/Looper;Landroid/os/freeze/FlymeFreezeList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/freeze/FlymeFreezeListener;


# direct methods
.method constructor <init>(Landroid/os/freeze/FlymeFreezeListener;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 32
    iput-object p1, p0, Landroid/os/freeze/FlymeFreezeListener$2;->this$0:Landroid/os/freeze/FlymeFreezeListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/os/freeze/FlymeFreezeListener$2;->this$0:Landroid/os/freeze/FlymeFreezeListener;

    # invokes: Landroid/os/freeze/FlymeFreezeListener;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/os/freeze/FlymeFreezeListener;->access$000(Landroid/os/freeze/FlymeFreezeListener;Landroid/os/Message;)V

    .line 36
    return-void
.end method
