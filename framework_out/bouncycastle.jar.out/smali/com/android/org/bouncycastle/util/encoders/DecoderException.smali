.class public Lcom/android/org/bouncycastle/util/encoders/DecoderException;
.super Ljava/lang/IllegalStateException;
.source "DecoderException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/encoders/DecoderException;->cause:Ljava/lang/Throwable;

    .line 13
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/DecoderException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
