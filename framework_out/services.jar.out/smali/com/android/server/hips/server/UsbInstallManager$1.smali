.class Lcom/android/server/hips/server/UsbInstallManager$1;
.super Landroid/os/Handler;
.source "UsbInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/server/UsbInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/server/UsbInstallManager;


# direct methods
.method constructor <init>(Lcom/android/server/hips/server/UsbInstallManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    # getter for: Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;
    invoke-static {v3}, Lcom/android/server/hips/server/UsbInstallManager;->access$000(Lcom/android/server/hips/server/UsbInstallManager;)Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    move-result-object v3

    iget-object v2, v3, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    .line 78
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    # getter for: Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;
    invoke-static {v3}, Lcom/android/server/hips/server/UsbInstallManager;->access$000(Lcom/android/server/hips/server/UsbInstallManager;)Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    move-result-object v3

    iget-object v0, v3, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mApkName:Ljava/lang/String;

    .line 79
    .local v0, "apkName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    # getter for: Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;
    invoke-static {v3}, Lcom/android/server/hips/server/UsbInstallManager;->access$000(Lcom/android/server/hips/server/UsbInstallManager;)Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    move-result-object v3

    iget-object v1, v3, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 80
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    # invokes: Lcom/android/server/hips/server/UsbInstallManager;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v3, v2, v0, v1}, Lcom/android/server/hips/server/UsbInstallManager;->access$100(Lcom/android/server/hips/server/UsbInstallManager;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 83
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "pkgName":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    # getter for: Lcom/android/server/hips/server/UsbInstallManager;->mTime:I
    invoke-static {v3}, Lcom/android/server/hips/server/UsbInstallManager;->access$200(Lcom/android/server/hips/server/UsbInstallManager;)I

    move-result v3

    if-lez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    # operator-- for: Lcom/android/server/hips/server/UsbInstallManager;->mTime:I
    invoke-static {v3}, Lcom/android/server/hips/server/UsbInstallManager;->access$210(Lcom/android/server/hips/server/UsbInstallManager;)I

    .line 85
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    # getter for: Lcom/android/server/hips/server/UsbInstallManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/hips/server/UsbInstallManager;->access$300(Lcom/android/server/hips/server/UsbInstallManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    # getter for: Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/hips/server/UsbInstallManager;->access$400(Lcom/android/server/hips/server/UsbInstallManager;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
