.class Lcom/android/server/hips/server/UsbInstallManager$4;
.super Ljava/lang/Object;
.source "UsbInstallManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/server/UsbInstallManager;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/server/UsbInstallManager;


# direct methods
.method constructor <init>(Lcom/android/server/hips/server/UsbInstallManager;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/hips/server/UsbInstallManager$4;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$4;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    # setter for: Lcom/android/server/hips/server/UsbInstallManager;->mIsDialogShowing:Z
    invoke-static {v0, v1}, Lcom/android/server/hips/server/UsbInstallManager;->access$502(Lcom/android/server/hips/server/UsbInstallManager;Z)Z

    .line 283
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$4;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    # setter for: Lcom/android/server/hips/server/UsbInstallManager;->mTime:I
    invoke-static {v0, v1}, Lcom/android/server/hips/server/UsbInstallManager;->access$202(Lcom/android/server/hips/server/UsbInstallManager;I)I

    .line 284
    return-void
.end method
