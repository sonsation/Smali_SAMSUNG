.class public final Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;
.super Ljava/lang/Object;
.source "PackageInstallerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/compat/PackageInstallerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageInstallInfo"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public progress:I

.field public state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "progress"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    .line 69
    iput p3, p0, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    .line 70
    return-void
.end method
