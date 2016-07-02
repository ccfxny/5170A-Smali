.class final Landroid/app/ActivityThread$ScrollCallbackData;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScrollCallbackData"
.end annotation


# instance fields
.field callback:Landroid/app/IScrollActivityCallback;

.field token:Landroid/os/IBinder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
