.class public Landroid/test/PackageInfoSources;
.super Ljava/lang/Object;
.source "PackageInfoSources.java"


# static fields
.field private static classPathSource:Landroid/test/ClassPathPackageInfoSource;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static forClassPath(Ljava/lang/ClassLoader;)Landroid/test/ClassPathPackageInfoSource;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 30
    sget-object v0, Landroid/test/PackageInfoSources;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/test/ClassPathPackageInfoSource;

    invoke-direct {v0}, Landroid/test/ClassPathPackageInfoSource;-><init>()V

    sput-object v0, Landroid/test/PackageInfoSources;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    .line 32
    sget-object v0, Landroid/test/PackageInfoSources;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    invoke-virtual {v0, p0}, Landroid/test/ClassPathPackageInfoSource;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 34
    :cond_0
    sget-object v0, Landroid/test/PackageInfoSources;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    return-object v0
.end method
