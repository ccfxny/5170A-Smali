.class public Lcom/android/ims/ImsManager$MyServiceListener;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lorg/gsma/joyn/JoynServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsManager;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsManager;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/ims/ImsManager$MyServiceListener;->this$0:Lcom/android/ims/ImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 421
    const-string v0, "ImsManager"

    const-string v1, "onServiceConnected entry "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 431
    const-string v0, "ImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method
