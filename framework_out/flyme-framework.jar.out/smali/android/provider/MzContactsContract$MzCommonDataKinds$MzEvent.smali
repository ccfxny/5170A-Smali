.class public final Landroid/provider/MzContactsContract$MzCommonDataKinds$MzEvent;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract$MzCommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzEvent"
.end annotation


# static fields
.field public static final TYPE_LUNAR_BIRTHDAY:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeResource(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 447
    if-nez p0, :cond_0

    .line 448
    const v0, 0x104034b

    .line 454
    :goto_0
    return v0

    .line 450
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 454
    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0

    .line 452
    :pswitch_0
    const v0, 0xa0a012e

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
