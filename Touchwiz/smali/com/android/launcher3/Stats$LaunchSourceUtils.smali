.class public Lcom/android/launcher3/Stats$LaunchSourceUtils;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchSourceUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSourceData()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "sourceData":Landroid/os/Bundle;
    const-string v1, "container"

    const-string v2, "homescreen"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "container_page"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    const-string v1, "sub_container_page"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    return-object v0
.end method

.method public static populateSourceDataFromAncestorProvider(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 61
    if-nez p0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    .local v1, "provider":Lcom/android/launcher3/Stats$LaunchSourceProvider;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 67
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 68
    instance-of v2, v0, Lcom/android/launcher3/Stats$LaunchSourceProvider;

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 69
    check-cast v1, Lcom/android/launcher3/Stats$LaunchSourceProvider;

    .line 75
    :cond_2
    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v1, p1}, Lcom/android/launcher3/Stats$LaunchSourceProvider;->fillInLaunchSourceData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1
.end method
