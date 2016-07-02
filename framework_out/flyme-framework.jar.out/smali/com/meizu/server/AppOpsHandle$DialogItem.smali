.class Lcom/meizu/server/AppOpsHandle$DialogItem;
.super Ljava/lang/Object;
.source "AppOpsHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/AppOpsHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogItem"
.end annotation


# instance fields
.field public code:I

.field public dialog:Landroid/app/AlertDialog;

.field public pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/server/AppOpsHandle;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/meizu/server/AppOpsHandle;ILandroid/app/AlertDialog;ILjava/lang/String;)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "dAlertDialog"    # Landroid/app/AlertDialog;
    .param p4, "uid"    # I
    .param p5, "pkg"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/meizu/server/AppOpsHandle$DialogItem;->this$0:Lcom/meizu/server/AppOpsHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    .line 111
    iput-object p3, p0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    .line 112
    iput p4, p0, Lcom/meizu/server/AppOpsHandle$DialogItem;->uid:I

    .line 113
    iput-object p5, p0, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    .line 114
    return-void
.end method
