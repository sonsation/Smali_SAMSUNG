.class public Lcom/android/internal/app/ActivityTrigger;
.super Ljava/lang/Object;
.source "ActivityTrigger.java"


# static fields
.field private static final FLAG_HARDWARE_ACCELERATED:I = 0x200

.field private static final FLAG_OVERRIDE_RESOLUTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTrigger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native native_at_deinit()V
.end method

.method private native native_at_miscActivity(ILjava/lang/String;II)F
.end method

.method private native native_at_pauseActivity(Ljava/lang/String;)V
.end method

.method private native native_at_resumeActivity(Ljava/lang/String;)V
.end method

.method private native native_at_startActivity(Ljava/lang/String;I)I
.end method

.method private native native_at_stopActivity(Ljava/lang/String;)V
.end method


# virtual methods
.method public activityMiscTrigger(ILjava/lang/String;II)F
    .locals 1
    .param p1, "func"    # I
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "type"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ActivityTrigger;->native_at_miscActivity(ILjava/lang/String;II)F

    move-result v0

    return v0
.end method

.method public activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 95
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 96
    .local v0, "activity":Ljava/lang/String;
    const-string/jumbo v2, "ActivityTrigger"

    const-string/jumbo v3, "ActivityTrigger activityPauseTrigger "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .end local v0    # "activity":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActivityTrigger;->native_at_pauseActivity(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 86
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 88
    .local v0, "activity":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .end local v0    # "activity":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActivityTrigger;->native_at_resumeActivity(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public activityStartTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "IsInFullScreen"    # Z

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 60
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 61
    .local v2, "overrideFlags":I
    const/4 v0, 0x0

    .line 63
    .local v0, "activity":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .end local v0    # "activity":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/android/internal/app/ActivityTrigger;->native_at_startActivity(Ljava/lang/String;I)I

    move-result v2

    .line 68
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_1

    .line 69
    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 72
    :cond_1
    if-eqz p4, :cond_3

    .line 73
    const-string/jumbo v3, "ActivityTrigger"

    const-string/jumbo v4, "Activity is Triggerred in full screen "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2

    .line 75
    const-string/jumbo v3, "ActivityTrigger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " appInfo.flags - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->setAppOverrideDensity()V

    .line 58
    :cond_2
    :goto_0
    return-void

    .line 79
    :cond_3
    const-string/jumbo v3, "ActivityTrigger"

    const-string/jumbo v4, "Activity is not Triggerred in full screen "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public activityStopTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 104
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 105
    .local v0, "activity":Ljava/lang/String;
    const-string/jumbo v2, "ActivityTrigger"

    const-string/jumbo v3, "ActivityTrigger activityStopTrigger "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .end local v0    # "activity":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActivityTrigger;->native_at_stopActivity(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->native_at_deinit()V

    .line 53
    return-void
.end method
