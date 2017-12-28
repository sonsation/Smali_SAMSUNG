.class public Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;
.super Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
.source "LauncherActivityInfoCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0
    .param p1, "launcherActivityInfo"    # Landroid/content/pm/LauncherActivityInfo;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 34
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "density"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/LauncherActivityInfo;->semGetBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "ne":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getFirstInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method
