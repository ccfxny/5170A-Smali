.class Lcom/android/uiautomator/core/Tracer$LogcatSink;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Lcom/android/uiautomator/core/Tracer$TracerSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogcatSink"
.end annotation


# static fields
.field private static final LOGCAT_TAG:Ljava/lang/String; = "UiAutomatorTrace"


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/Tracer;


# direct methods
.method private constructor <init>(Lcom/android/uiautomator/core/Tracer;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer$LogcatSink;->this$0:Lcom/android/uiautomator/core/Tracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/uiautomator/core/Tracer;Lcom/android/uiautomator/core/Tracer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/uiautomator/core/Tracer;
    .param p2, "x1"    # Lcom/android/uiautomator/core/Tracer$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/Tracer$LogcatSink;-><init>(Lcom/android/uiautomator/core/Tracer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, "UiAutomatorTrace"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
