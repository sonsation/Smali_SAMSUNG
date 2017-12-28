.class Lcom/android/launcher3/common/compat/AppWidgetManagerCompatV16;
.super Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
.source "AppWidgetManagerCompatV16.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatV16;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatV16;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0
.end method

.method public findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatV16;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 104
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatV16;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 108
    .end local v0    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatV16;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllProvidersMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    .line 115
    .local v2, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v3, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatV16;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 116
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v4, v5, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v0    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    return-object v1
.end method

.method public getBadgeBitmap(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "info"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageHeight"    # I

    .prologue
    .line 97
    return-object p2
.end method

.method public getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .prologue
    .line 71
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .param p2, "cache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 91
    iget-object v0, p1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .prologue
    .line 55
    iget-object v0, p1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatV16;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 86
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v3, 0x0

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
    .locals 2
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "widgetId"    # I
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "host"    # Landroid/appwidget/AppWidgetHost;
    .param p5, "requestCode"    # I

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    invoke-static {p3, v0, p5}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 81
    return-void
.end method
