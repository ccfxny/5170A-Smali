.class Lcom/android/internal/app/AlertController$Injector;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static syncViewAndData(Lcom/android/internal/app/AlertController;)V
    .locals 2
    .param p0, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setView(Landroid/view/View;)V

    .line 1184
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setTitle(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setMessage(Ljava/lang/CharSequence;)V

    .line 1186
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setListView(Landroid/widget/ListView;)V

    .line 1187
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1188
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->setupView()V

    .line 1189
    return-void
.end method
