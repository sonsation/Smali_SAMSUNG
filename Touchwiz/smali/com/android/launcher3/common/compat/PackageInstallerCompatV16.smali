.class public Lcom/android/launcher3/common/compat/PackageInstallerCompatV16;
.super Lcom/android/launcher3/common/compat/PackageInstallerCompat;
.source "PackageInstallerCompatV16.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/PackageInstallerCompat;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public addAllSessionInfoToCache()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public isSessionInfoItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public updateAndGetActiveSessionCache()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
