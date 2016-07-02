.class public Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "ThermalSwitchDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;,
        Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;,
        Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ThermalSwitchManager"


# instance fields
.field private mAlertDialogView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field public mDialogBuilderHomeWatcher:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

.field private mOnThermalSwitchClickListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;

.field private mRDrawableBalance:Ljava/lang/reflect/Field;

.field private mRDrawablePerformance:Ljava/lang/reflect/Field;

.field private mRIdImageViewBalance:Ljava/lang/reflect/Field;

.field private mRIdImageViewPerformance:Ljava/lang/reflect/Field;

.field private mRIdPowerModeTitle:Ljava/lang/reflect/Field;

.field private mRIdTextViewBalance:Ljava/lang/reflect/Field;

.field private mRIdTextViewPerformance:Ljava/lang/reflect/Field;

.field private mRLayoutPowerMode:Ljava/lang/reflect/Field;

.field private mRStringBalance:Ljava/lang/reflect/Field;

.field private mRStringPerformance:Ljava/lang/reflect/Field;

.field private mRStringSwitchTo:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 66
    iput-object p1, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mContext:Landroid/content/Context;

    .line 67
    const-string v6, "ThermalSwitchManager"

    const-string v7, "Create Thermal Switch DailogBuilder!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_0
    const-string v6, "com.flyme.internal.R$string"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 70
    .local v3, "classRString":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "battery_consumption_balance_title"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRStringBalance:Ljava/lang/reflect/Field;

    .line 71
    const-string v6, "battery_consumption_performance_title"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRStringPerformance:Ljava/lang/reflect/Field;

    .line 72
    const-string v6, "recommend_switch_power_mode"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRStringSwitchTo:Ljava/lang/reflect/Field;

    .line 74
    const-string v6, "com.flyme.internal.R$drawable"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "classRDrawable":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "mz_popup_balance"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRDrawableBalance:Ljava/lang/reflect/Field;

    .line 76
    const-string v6, "mz_popup_fast"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRDrawablePerformance:Ljava/lang/reflect/Field;

    .line 78
    const-string v6, "com.flyme.internal.R$layout"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 79
    .local v2, "classRLayout":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "mz_powermode_alertdialog_view"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRLayoutPowerMode:Ljava/lang/reflect/Field;

    .line 80
    const-string v6, "com.flyme.internal.R$id"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 81
    .local v1, "classRId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "mz_powermode_title"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRIdPowerModeTitle:Ljava/lang/reflect/Field;

    .line 82
    const-string v6, "mz_mode1_textview"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRIdTextViewBalance:Ljava/lang/reflect/Field;

    .line 83
    const-string v6, "mz_mode2_textview"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRIdTextViewPerformance:Ljava/lang/reflect/Field;

    .line 84
    const-string v6, "mz_mode1_imageview"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRIdImageViewBalance:Ljava/lang/reflect/Field;

    .line 85
    const-string v6, "mz_mode2_imageview"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRIdImageViewPerformance:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    .end local v0    # "classRDrawable":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "classRId":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "classRLayout":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "classRString":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->createView()Landroid/view/View;

    move-result-object v5

    .line 95
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 103
    new-instance v6, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$1;

    invoke-direct {v6, p0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$1;-><init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;)V

    invoke-virtual {p0, v6}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance v6, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$2;

    invoke-direct {v6, p0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$2;-><init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;)V

    invoke-virtual {p0, v6}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    new-instance v6, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    iget-object v7, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;-><init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mDialogBuilderHomeWatcher:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    .line 126
    iget-object v6, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mDialogBuilderHomeWatcher:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    invoke-virtual {v6}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->startWatch()V

    .line 127
    return-void

    .line 86
    .end local v5    # "view":Landroid/view/View;
    :catch_0
    move-exception v4

    .line 88
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 91
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;)Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mOnThermalSwitchClickListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 13

    .prologue
    .line 130
    const/4 v8, 0x0

    .line 137
    .local v8, "thermalModeView":Landroid/view/View;
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRStringBalance:Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "modeBalance":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRStringPerformance:Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "modePerformance":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRStringSwitchTo:Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "switchTitle":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRLayoutPowerMode:Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 142
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRIdImageViewBalance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 143
    .local v0, "balanceImageView":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRIdImageViewPerformance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 144
    .local v5, "performanceImageView":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRDrawableBalance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRDrawablePerformance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    new-instance v10, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$3;

    invoke-direct {v10, p0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$3;-><init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v10, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$4;

    invoke-direct {v10, p0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$4;-><init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;)V

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRIdTextViewBalance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    .local v1, "balanceTextView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRIdTextViewPerformance:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 171
    .local v6, "performanceTextView":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v10, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mRIdPowerModeTitle:Ljava/lang/reflect/Field;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 175
    .local v9, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const-string v10, "ThermalSwitchManager"

    const-string v11, "Create View Done!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .end local v0    # "balanceImageView":Landroid/widget/ImageView;
    .end local v1    # "balanceTextView":Landroid/widget/TextView;
    .end local v3    # "modeBalance":Ljava/lang/CharSequence;
    .end local v4    # "modePerformance":Ljava/lang/CharSequence;
    .end local v5    # "performanceImageView":Landroid/widget/ImageView;
    .end local v6    # "performanceTextView":Landroid/widget/TextView;
    .end local v7    # "switchTitle":Ljava/lang/CharSequence;
    .end local v9    # "titleTextView":Landroid/widget/TextView;
    :goto_0
    return-object v8

    .line 178
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public setOnThermalSwitchListener(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mOnThermalSwitchClickListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;

    .line 195
    return-void
.end method
