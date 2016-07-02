.class public Lcom/android/server/hips/core/Intercept$PIINode;
.super Ljava/lang/Object;
.source "Intercept.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/core/Intercept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PIINode"
.end annotation


# instance fields
.field public m_bIntercept:Z

.field public m_szPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "szPkg"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hips/core/Intercept$PIINode;->m_bIntercept:Z

    .line 56
    iput-object p1, p0, Lcom/android/server/hips/core/Intercept$PIINode;->m_szPkg:Ljava/lang/String;

    .line 57
    return-void
.end method
