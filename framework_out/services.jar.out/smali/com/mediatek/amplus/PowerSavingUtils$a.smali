.class Lcom/mediatek/amplus/PowerSavingUtils$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/amplus/PowerSavingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic h:Lcom/mediatek/amplus/PowerSavingUtils;


# direct methods
.method constructor <init>(Lcom/mediatek/amplus/PowerSavingUtils;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils$a;->h:Lcom/mediatek/amplus/PowerSavingUtils;

    .line 245
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 246
    invoke-virtual {p0}, Lcom/mediatek/amplus/PowerSavingUtils$a;->c()V

    .line 248
    return-void
.end method


# virtual methods
.method c()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$a;->h:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-static {v0}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 252
    const-string v1, "background_power_saving_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 256
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$a;->h:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-static {v0}, Lcom/mediatek/amplus/PowerSavingUtils;->b(Lcom/mediatek/amplus/PowerSavingUtils;)V

    .line 257
    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$a;->h:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-static {v0}, Lcom/mediatek/amplus/PowerSavingUtils;->b(Lcom/mediatek/amplus/PowerSavingUtils;)V

    .line 261
    return-void
.end method
