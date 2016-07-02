.class Landroid/app/Activity$UpdateStatusBarTintRunnable;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateStatusBarTintRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 6718
    iput-object p1, p0, Landroid/app/Activity$UpdateStatusBarTintRunnable;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6721
    const-string v0, "inject makeVisible: status bar tint effect"

    # invokes: Landroid/app/Activity;->STATUS_BAR_TINT_LOG(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/app/Activity;->access$400(Ljava/lang/String;)V

    .line 6722
    iget-object v0, p0, Landroid/app/Activity$UpdateStatusBarTintRunnable;->this$0:Landroid/app/Activity;

    # invokes: Landroid/app/Activity;->setupStatusBarTint()V
    invoke-static {v0}, Landroid/app/Activity;->access$500(Landroid/app/Activity;)V

    .line 6723
    return-void
.end method
