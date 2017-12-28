.class public final Lcom/android/launcher3/util/UninstallAppUtils;
.super Ljava/lang/Object;
.source "UninstallAppUtils.java"


# static fields
.field private static final SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "UninstallAppUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 3
    .param p0, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    instance-of v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 72
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 73
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 74
    .local v0, "component":Landroid/content/ComponentName;
    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 79
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static startUninstallActivity(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "className":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    const-string v4, "UninstallAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to uninstall app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v5, "package"

    .line 47
    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10800000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "UninstallAppUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startUninstallActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startUninstallActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-static {p1}, Lcom/android/launcher3/util/UninstallAppUtils;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 60
    .local v0, "componentInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 61
    const-string v2, "UninstallAppUtils"

    const-string v3, "startUnistallActivity - componentInfo == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 66
    .end local p1    # "info":Ljava/lang/Object;
    :goto_0
    return v2

    .line 65
    .restart local p1    # "info":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local p1    # "info":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 66
    .local v1, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 67
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 66
    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/launcher3/Launcher;->startApplicationUninstallActivity(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    move-result v2

    goto :goto_0
.end method
