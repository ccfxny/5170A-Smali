.class Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;
.super Ljava/lang/Object;
.source "BouncyCastleProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    # invokes: Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->access$000(Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;)V

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method
