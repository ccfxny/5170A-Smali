.class public Lcom/meizu/server/AppOpsHandle;
.super Ljava/lang/Object;
.source "AppOpsHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/server/AppOpsHandle$DialogItem;
    }
.end annotation


# static fields
.field public static final APPOPS_NOT_DEFINE:I = -0x1

.field public static final APPOPS_PREX:Ljava/lang/String; = "_op_"

.field public static final APPOPS_SETTINGS_ALLOWED:I = 0x1

.field public static final APPOPS_SETTINGS_ALLOWED_ALWAYLS:I = 0x4

.field public static final APPOPS_SETTINGS_DENIED:I = 0x0

.field public static final APPOPS_SETTINGS_DENIED_ALWAYLS:I = 0x3

.field public static final APPOPS_SETTINGS_INIT:I = 0x2

.field public static DEBUG:Z = false

.field private static final DISMISS:I = 0x2

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field private static final SHOW:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FlymePermissionManager"

.field private static final UPDATE_DEFUAT:I


# instance fields
.field dialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/server/AppOpsHandle$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageLabel:Ljava/lang/String;

.field private mPermissonContentString:Ljava/lang/String;

.field private mPermissonDetailsString:Ljava/lang/String;

.field private mPhHandler:Landroid/os/Handler;

.field private mShortcutLock:Ljava/lang/Object;

.field private mShortcutWait:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mShortcutLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mShortcutWait:Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/meizu/server/AppOpsHandle$1;

    invoke-direct {v0, p0}, Lcom/meizu/server/AppOpsHandle$1;-><init>(Lcom/meizu/server/AppOpsHandle;)V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    .line 338
    iput-object p1, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/server/AppOpsHandle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/server/AppOpsHandle;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/server/AppOpsHandle;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/server/AppOpsHandle;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/meizu/server/AppOpsHandle;->showToastMessage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/server/AppOpsHandle;Lcom/meizu/server/AppOpsHandle$DialogItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/server/AppOpsHandle;
    .param p1, "x1"    # Lcom/meizu/server/AppOpsHandle$DialogItem;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/meizu/server/AppOpsHandle;->updateDialogList(Lcom/meizu/server/AppOpsHandle$DialogItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/server/AppOpsHandle;Landroid/content/DialogInterface;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/server/AppOpsHandle;
    .param p1, "x1"    # Landroid/content/DialogInterface;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/server/AppOpsHandle;->update(Landroid/content/DialogInterface;ZZZ)V

    return-void
.end method

.method private checkDialogList(IILjava/lang/String;)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 138
    sget-boolean v2, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FlymePermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDialogList code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AppOpsHandle$DialogItem;

    .line 140
    .local v0, "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    iget v2, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    if-ne p1, v2, :cond_1

    iget v2, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->uid:I

    if-ne p2, v2, :cond_1

    iget-object v2, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    sget-boolean v2, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "FlymePermissionManager"

    const-string v3, "checkDialogList:true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2
    const/4 v2, 0x1

    .line 150
    .end local v0    # "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    :goto_0
    return v2

    .line 149
    :cond_3
    sget-boolean v2, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "FlymePermissionManager"

    const-string v3, "checkDialogList:false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPermissonTypeDetails(I)Ljava/lang/String;
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 524
    const-string v0, ""

    .line 525
    .local v0, "mPermissonDetailsString":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lmeizu/security/FlymePermissionManager;->getPermissonTypeDetails(Landroid/content/Context;I)Lmeizu/security/FlymePermissionManager$TitleAndContent;

    move-result-object v1

    .line 527
    .local v1, "titleAndContent":Lmeizu/security/FlymePermissionManager$TitleAndContent;
    iget-object v0, v1, Lmeizu/security/FlymePermissionManager$TitleAndContent;->title:Ljava/lang/String;

    .line 528
    iget-object v2, v1, Lmeizu/security/FlymePermissionManager$TitleAndContent;->content:Ljava/lang/String;

    iput-object v2, p0, Lcom/meizu/server/AppOpsHandle;->mPermissonContentString:Ljava/lang/String;

    .line 529
    return-object v0
.end method

.method private isShortCutExist(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 490
    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 493
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v6, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 494
    iget-object v6, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "installTitle":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 507
    .end local v2    # "installTitle":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 499
    .restart local v2    # "installTitle":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .end local v2    # "installTitle":Ljava/lang/String;
    :goto_1
    move v4, v5

    .line 507
    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private showSettingDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "checkIntent"    # Landroid/content/Intent;

    .prologue
    .line 232
    const-string v5, "INTENT_SHORTCUT"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 233
    .local v24, "shortCut":Z
    new-instance v10, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x5

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 236
    .local v10, "b":Landroid/app/AlertDialog$Builder;
    const v5, 0xa030007

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 237
    .local v28, "view":Landroid/view/View;
    const v5, 0xa0f0058

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    .line 239
    .local v22, "remember":Landroid/widget/CheckBox;
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 240
    const v5, 0xa0a00e9

    new-instance v6, Lcom/meizu/server/AppOpsHandle$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lcom/meizu/server/AppOpsHandle$2;-><init>(Lcom/meizu/server/AppOpsHandle;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    const v5, 0xa0a00ea

    new-instance v6, Lcom/meizu/server/AppOpsHandle$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lcom/meizu/server/AppOpsHandle$3;-><init>(Lcom/meizu/server/AppOpsHandle;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 261
    .local v7, "d":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7e0

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 262
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 263
    const v5, 0xa0f0055

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 264
    .local v27, "title":Landroid/widget/TextView;
    if-nez v24, :cond_1

    .line 265
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/server/AppOpsHandle;->getPermissonTypeDetails(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xa0a00e3

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    .line 272
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 274
    const/4 v5, -0x1

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    .line 275
    .local v13, "button":Landroid/widget/Button;
    const v14, -0xab51aa

    .line 276
    .local v14, "color":I
    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 277
    new-instance v5, Lcom/meizu/server/AppOpsHandle$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Lcom/meizu/server/AppOpsHandle$4;-><init>(Lcom/meizu/server/AppOpsHandle;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 289
    const v5, 0xa0f0056

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 290
    .local v17, "icon":Landroid/widget/ImageView;
    const v5, 0xa0f0057

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 291
    .local v25, "shortcutName":Landroid/widget/TextView;
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    if-eqz v24, :cond_3

    .line 295
    const/4 v11, 0x0

    .line 296
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 297
    .local v18, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    const-string v5, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .line 299
    .local v12, "bitmapParcelable":Landroid/os/Parcelable;
    const-string v5, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 300
    .local v26, "strShortcutName":Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    if-eqz v12, :cond_2

    instance-of v5, v12, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    move-object v11, v12

    .line 302
    check-cast v11, Landroid/graphics/Bitmap;

    .line 303
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapParcelable":Landroid/os/Parcelable;
    .end local v18    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v26    # "strShortcutName":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v5, "uid"

    const/4 v6, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 327
    .local v8, "uid":I
    const-string v5, "pkg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 328
    .local v9, "pkg":Ljava/lang/String;
    new-instance v4, Lcom/meizu/server/AppOpsHandle$DialogItem;

    move-object/from16 v5, p0

    move/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/meizu/server/AppOpsHandle$DialogItem;-><init>(Lcom/meizu/server/AppOpsHandle;ILandroid/app/AlertDialog;ILjava/lang/String;)V

    .line 329
    .local v4, "item":Lcom/meizu/server/AppOpsHandle$DialogItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 331
    .local v20, "message":Landroid/os/Message;
    const/4 v5, 0x2

    move-object/from16 v0, v20

    iput v5, v0, Landroid/os/Message;->what:I

    .line 332
    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v30, 0x4fb0

    move-object/from16 v0, v20

    move-wide/from16 v1, v30

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 335
    return-void

    .line 269
    .end local v4    # "item":Lcom/meizu/server/AppOpsHandle$DialogItem;
    .end local v8    # "uid":I
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v13    # "button":Landroid/widget/Button;
    .end local v14    # "color":I
    .end local v17    # "icon":Landroid/widget/ImageView;
    .end local v20    # "message":Landroid/os/Message;
    .end local v25    # "shortcutName":Landroid/widget/TextView;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xa0a00e5

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 305
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "bitmapParcelable":Landroid/os/Parcelable;
    .restart local v13    # "button":Landroid/widget/Button;
    .restart local v14    # "color":I
    .restart local v17    # "icon":Landroid/widget/ImageView;
    .restart local v18    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .restart local v25    # "shortcutName":Landroid/widget/TextView;
    .restart local v26    # "strShortcutName":Ljava/lang/String;
    :cond_2
    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    .line 307
    .local v16, "extra":Landroid/os/Parcelable;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    instance-of v5, v0, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v5, :cond_0

    .line 309
    :try_start_0
    move-object/from16 v0, v16

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v18, v0

    .line 310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 311
    .local v21, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v23

    .line 313
    .local v23, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 314
    .local v19, "id":I
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 315
    .local v15, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 316
    .end local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v19    # "id":I
    .end local v21    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v23    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .line 322
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapParcelable":Landroid/os/Parcelable;
    .end local v16    # "extra":Landroid/os/Parcelable;
    .end local v18    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v26    # "strShortcutName":Ljava/lang/String;
    :cond_3
    const/16 v5, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    const/16 v5, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showToastMessage(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 154
    const-string v5, "code"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "code":I
    const-string v5, "uid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 156
    .local v4, "uid":I
    const-string v5, "pkg"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "pkg":Ljava/lang/String;
    invoke-direct {p0, v0, v4, v3}, Lcom/meizu/server/AppOpsHandle;->checkDialogList(IILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v2, 0x0

    .line 163
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 164
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_1
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0, p1}, Lcom/meizu/server/AppOpsHandle;->showSettingDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private update(Landroid/content/DialogInterface;ZZZ)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "postive"    # Z
    .param p3, "dimiss"    # Z
    .param p4, "always"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "item":Lcom/meizu/server/AppOpsHandle$DialogItem;
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AppOpsHandle$DialogItem;

    .line 179
    .local v0, "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eq v4, p1, :cond_1

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    :cond_1
    move-object v2, v0

    .line 187
    .end local v0    # "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    :cond_2
    if-eqz v2, :cond_3

    .line 188
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 189
    if-eqz p2, :cond_5

    .line 190
    if-eqz p4, :cond_4

    .line 191
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :goto_0
    invoke-direct {p0, v2, v7}, Lcom/meizu/server/AppOpsHandle;->updatePermissionControl(Lcom/meizu/server/AppOpsHandle$DialogItem;Z)V

    .line 225
    :cond_3
    :goto_1
    return-void

    .line 195
    :cond_4
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 201
    :cond_5
    if-eqz p3, :cond_6

    .line 202
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 205
    .local v3, "res":I
    if-ne v3, v8, :cond_3

    .line 206
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 211
    .end local v3    # "res":I
    :cond_6
    invoke-direct {p0, v2, v9}, Lcom/meizu/server/AppOpsHandle;->updatePermissionControl(Lcom/meizu/server/AppOpsHandle$DialogItem;Z)V

    .line 212
    if-eqz p4, :cond_7

    .line 213
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 217
    :cond_7
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method private updateDialogList(Lcom/meizu/server/AppOpsHandle$DialogItem;)V
    .locals 8
    .param p1, "item"    # Lcom/meizu/server/AppOpsHandle$DialogItem;

    .prologue
    const/4 v6, 0x0

    .line 118
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AppOpsHandle$DialogItem;

    .line 119
    .local v0, "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    iget v4, p1, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    iget v5, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    if-ne v4, v5, :cond_0

    iget v4, p1, Lcom/meizu/server/AppOpsHandle$DialogItem;->uid:I

    iget v5, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->uid:I

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 121
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "mPackageNameStringOp":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 127
    .local v3, "message":Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 128
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    .end local v2    # "mPackageNameStringOp":Ljava/lang/String;
    .end local v3    # "message":Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 135
    .end local v0    # "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    :cond_2
    return-void
.end method

.method private updatePermissionControl(Lcom/meizu/server/AppOpsHandle$DialogItem;Z)V
    .locals 0
    .param p1, "item"    # Lcom/meizu/server/AppOpsHandle$DialogItem;
    .param p2, "limit"    # Z

    .prologue
    .line 229
    return-void
.end method


# virtual methods
.method public handleIntentOperation(IILjava/lang/String;Lcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I
    .locals 22
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "service"    # Lcom/meizu/server/FlymePermissionService;
    .param p5, "sendIntent"    # Landroid/content/Intent;

    .prologue
    .line 343
    const-string v4, "INTENT_SHORTCUT"

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 345
    .local v18, "shortCut":Z
    const/4 v13, 0x0

    .line 347
    .local v13, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 349
    iget v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 350
    const/4 v4, 0x0

    .line 481
    :goto_0
    return v4

    .line 353
    :catch_0
    move-exception v11

    .line 354
    .local v11, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FlymePermissionManager"

    const-string v5, "FlymePermissionManager"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 358
    .end local v11    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    if-nez v18, :cond_12

    .line 359
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 360
    .local v14, "localLock":Ljava/lang/Object;
    monitor-enter v14

    .line 362
    const/4 v12, 0x0

    .line 363
    .local v12, "i":I
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 364
    .local v16, "opName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 366
    .local v17, "res":I
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first get res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2
    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    .line 370
    const/16 v19, 0x2

    .line 371
    .local v19, "value":I
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get recommend value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_3
    if-nez v19, :cond_4

    .line 373
    const/4 v4, 0x0

    monitor-exit v14

    goto/16 :goto_0

    .line 416
    .end local v16    # "opName":Ljava/lang/String;
    .end local v17    # "res":I
    .end local v19    # "value":I
    :catchall_0
    move-exception v4

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 374
    .restart local v16    # "opName":Ljava/lang/String;
    .restart local v17    # "res":I
    .restart local v19    # "value":I
    :cond_4
    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_5

    .line 375
    const/4 v4, 0x1

    :try_start_2
    monitor-exit v14

    goto/16 :goto_0

    .line 377
    :cond_5
    const/16 v17, 0x2

    .line 382
    .end local v19    # "value":I
    :cond_6
    const/4 v4, 0x2

    move/from16 v0, v17

    if-eq v0, v4, :cond_7

    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_8

    .line 383
    :cond_7
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lcom/meizu/server/AppOpsHandle;->queueOperationMessage(IILjava/lang/String;IZLandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    :cond_8
    :goto_1
    const/4 v4, 0x2

    move/from16 v0, v17

    if-eq v0, v4, :cond_9

    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_c

    :cond_9
    const/16 v4, 0x5f

    if-ge v12, v4, :cond_c

    .line 389
    const-wide/16 v4, 0xc8

    :try_start_3
    invoke-virtual {v14, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 390
    add-int/lit8 v12, v12, 0x1

    .line 391
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    :cond_a
    :goto_2
    :try_start_4
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "break res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 399
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "break get res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 402
    :cond_c
    const/4 v4, 0x4

    move/from16 v0, v17

    if-eq v0, v4, :cond_d

    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_e

    :cond_d
    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_f

    .line 404
    :cond_e
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 405
    .local v15, "message":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v15, Landroid/os/Message;->what:I

    .line 406
    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v15, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 410
    .end local v15    # "message":Landroid/os/Message;
    :cond_f
    const/4 v4, 0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_10

    const/4 v4, 0x4

    move/from16 v0, v17

    if-ne v0, v4, :cond_11

    .line 412
    :cond_10
    const/4 v4, 0x0

    monitor-exit v14

    goto/16 :goto_0

    .line 414
    :cond_11
    const/4 v4, 0x1

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 418
    .end local v12    # "i":I
    .end local v14    # "localLock":Ljava/lang/Object;
    .end local v16    # "opName":Ljava/lang/String;
    .end local v17    # "res":I
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/meizu/server/AppOpsHandle;->isShortCutExist(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 419
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 421
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandle;->mShortcutLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 422
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandle;->mShortcutWait:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 424
    const/4 v12, 0x0

    .line 425
    .restart local v12    # "i":I
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 426
    .restart local v16    # "opName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 428
    .restart local v17    # "res":I
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_14

    const-string v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first get res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_14
    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_18

    .line 432
    const/16 v19, 0x2

    .line 433
    .restart local v19    # "value":I
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_15

    const-string v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get recommend value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_15
    if-nez v19, :cond_16

    .line 435
    const/4 v4, 0x0

    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v20

    goto/16 :goto_0

    .line 484
    .end local v12    # "i":I
    .end local v16    # "opName":Ljava/lang/String;
    .end local v17    # "res":I
    .end local v19    # "value":I
    :catchall_1
    move-exception v4

    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 436
    .restart local v12    # "i":I
    .restart local v16    # "opName":Ljava/lang/String;
    .restart local v17    # "res":I
    .restart local v19    # "value":I
    :cond_16
    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_17

    .line 437
    const/4 v4, 0x1

    :try_start_8
    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 439
    :cond_17
    const/16 v17, 0x2

    .line 444
    .end local v19    # "value":I
    :cond_18
    const/4 v4, 0x2

    move/from16 v0, v17

    if-eq v0, v4, :cond_19

    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a

    .line 445
    :cond_19
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    :try_start_a
    invoke-virtual/range {v4 .. v10}, Lcom/meizu/server/AppOpsHandle;->queueOperationMessage(IILjava/lang/String;IZLandroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 449
    :cond_1a
    :goto_3
    const/4 v4, 0x2

    move/from16 v0, v17

    if-eq v0, v4, :cond_1b

    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e

    :cond_1b
    const/16 v4, 0x5f

    if-ge v12, v4, :cond_1e

    .line 451
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mShortcutWait:Ljava/lang/Object;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 452
    add-int/lit8 v12, v12, 0x1

    .line 453
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_1c

    const-string v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 458
    :cond_1c
    :goto_4
    :try_start_c
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_1d

    const-string v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "break res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 461
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_1a

    const-string v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "break get res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 483
    .end local v16    # "opName":Ljava/lang/String;
    .end local v17    # "res":I
    :catchall_2
    move-exception v4

    monitor-exit v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 464
    .restart local v16    # "opName":Ljava/lang/String;
    .restart local v17    # "res":I
    :cond_1e
    const/4 v4, 0x4

    move/from16 v0, v17

    if-eq v0, v4, :cond_1f

    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_20

    :cond_1f
    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 466
    :cond_20
    :try_start_e
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 467
    .restart local v15    # "message":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v15, Landroid/os/Message;->what:I

    .line 468
    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    invoke-virtual {v4, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 471
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mShortcutWait:Ljava/lang/Object;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 477
    .end local v15    # "message":Landroid/os/Message;
    :cond_21
    :goto_5
    const/4 v4, 0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_22

    const/4 v4, 0x4

    move/from16 v0, v17

    if-ne v0, v4, :cond_23

    .line 479
    :cond_22
    const/4 v4, 0x0

    :try_start_10
    monitor-exit v21
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    monitor-exit v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    .line 481
    :cond_23
    const/4 v4, 0x1

    :try_start_12
    monitor-exit v21
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    monitor-exit v20
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_0

    .line 472
    .restart local v15    # "message":Landroid/os/Message;
    :catch_1
    move-exception v4

    goto :goto_5

    .line 454
    .end local v15    # "message":Landroid/os/Message;
    :catch_2
    move-exception v4

    goto/16 :goto_4

    .line 392
    .restart local v14    # "localLock":Ljava/lang/Object;
    :catch_3
    move-exception v4

    goto/16 :goto_2
.end method

.method public queueOperationMessage(IILjava/lang/String;IZLandroid/content/Intent;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "enable"    # Z
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    .line 513
    const-string v0, "code"

    invoke-virtual {p6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    const-string v0, "uid"

    invoke-virtual {p6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 515
    const-string v0, "pkg"

    invoke-virtual {p6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v0, "result"

    invoke-virtual {p6, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v0, "enable"

    invoke-virtual {p6, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    sget-boolean v0, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlymePermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queueOperationMessage code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 521
    return-void
.end method
