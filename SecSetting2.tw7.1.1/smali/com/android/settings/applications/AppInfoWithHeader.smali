.class public abstract Lcom/android/settings/applications/AppInfoWithHeader;
.super Lcom/android/settings/applications/AppInfoBase;
.source "AppInfoWithHeader.java"


# instance fields
.field private mCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 32
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mCreated:Z

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/android/settings/applications/AppInfoWithHeader;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 36
    :cond_0
    iput-boolean v7, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mCreated:Z

    .line 37
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    return-void

    .line 39
    :cond_1
    instance-of v0, p0, Lcom/android/settings/applications/AppStorageSettings;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, v7, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageName:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    .line 40
    invoke-static/range {v0 .. v5}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;II)V

    .line 30
    :goto_0
    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, v7, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 46
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageName:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    .line 45
    invoke-static/range {v0 .. v7}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;Z)V

    goto :goto_0
.end method
