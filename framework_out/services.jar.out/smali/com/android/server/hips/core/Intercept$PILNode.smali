.class public Lcom/android/server/hips/core/Intercept$PILNode;
.super Ljava/lang/Object;
.source "Intercept.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/core/Intercept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PILNode"
.end annotation


# instance fields
.field public m_nCode:I

.field public m_nMode:I

.field public m_nResult:I

.field public m_szCalleePkg:Ljava/lang/String;

.field public m_szCallerPkg:Ljava/lang/String;

.field public m_ulTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)V
    .locals 0
    .param p1, "szCallerPkg"    # Ljava/lang/String;
    .param p2, "szCalleePkg"    # Ljava/lang/String;
    .param p3, "nCode"    # I
    .param p4, "nResult"    # I
    .param p5, "nMode"    # I
    .param p6, "ulTimestamp"    # Ljava/lang/Long;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/hips/core/Intercept$PILNode;->m_szCallerPkg:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/android/server/hips/core/Intercept$PILNode;->m_szCalleePkg:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/android/server/hips/core/Intercept$PILNode;->m_ulTimestamp:Ljava/lang/Long;

    .line 30
    iput p4, p0, Lcom/android/server/hips/core/Intercept$PILNode;->m_nResult:I

    .line 31
    iput p3, p0, Lcom/android/server/hips/core/Intercept$PILNode;->m_nCode:I

    .line 32
    iput p5, p0, Lcom/android/server/hips/core/Intercept$PILNode;->m_nMode:I

    .line 33
    return-void
.end method
