.class public Lcom/android/server/hips/core/Intercept$PIBNode;
.super Ljava/lang/Object;
.source "Intercept.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/core/Intercept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PIBNode"
.end annotation


# instance fields
.field public m_bIntercept:Z

.field public m_szKey:Ljava/lang/String;

.field public m_szPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "szPkg"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "bIntercept"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p3, p0, Lcom/android/server/hips/core/Intercept$PIBNode;->m_bIntercept:Z

    .line 44
    iput-object p1, p0, Lcom/android/server/hips/core/Intercept$PIBNode;->m_szPkg:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/server/hips/core/Intercept$PIBNode;->m_szKey:Ljava/lang/String;

    .line 46
    return-void
.end method
