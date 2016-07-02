.class public Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;
.source "ECKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0
    .param p1, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 17
    return-void
.end method


# virtual methods
.method public getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method
