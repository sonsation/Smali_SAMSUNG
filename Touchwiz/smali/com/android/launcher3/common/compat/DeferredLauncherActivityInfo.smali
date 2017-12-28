.class public Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;
.super Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
.source "DeferredLauncherActivityInfo.java"


# instance fields
.field private mActualInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

.field private final mComponent:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/Context;)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mComponent:Landroid/content/ComponentName;

    .line 39
    iput-object p2, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 40
    iput-object p3, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private declared-synchronized getActualInfo()Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mActualInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 56
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mComponent:Landroid/content/ComponentName;

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mActualInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 60
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mActualInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-object v0
.end method
