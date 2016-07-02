.class public final Landroid/telecom/MzInCallAdapterManager$MzInCallUiState;
.super Ljava/lang/Object;
.source "MzInCallAdapterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/MzInCallAdapterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MzInCallUiState"
.end annotation


# static fields
.field public static final STATE_HIDED:I = 0x2

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_REMOVE:I = 0x3

.field public static final STATE_SHOWN:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/telecom/MzInCallAdapterManager;


# direct methods
.method public constructor <init>(Landroid/telecom/MzInCallAdapterManager;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Landroid/telecom/MzInCallAdapterManager$MzInCallUiState;->this$0:Landroid/telecom/MzInCallAdapterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
