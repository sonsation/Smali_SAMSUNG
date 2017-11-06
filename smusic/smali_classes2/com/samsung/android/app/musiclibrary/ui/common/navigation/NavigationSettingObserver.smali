.class public final Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;
.super Landroid/database/ContentObserver;
.source "NavigationSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;
    }
.end annotation


# static fields
.field private static final HIDE_BAR:Landroid/net/Uri;

.field private static final HIDE_BAR_ENABLED:Landroid/net/Uri;

.field private static final NAVIGATION_BAR_HIDE_BAR:Ljava/lang/String; = "navigationbar_hide_bar"

.field private static final NAVIGATION_BAR_HIDE_BAR_ENABLED:Ljava/lang/String; = "navigationbar_hide_bar_enabled"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mListener:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

.field private mPinEnabled:Z

.field private mSettingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "navigationbar_hide_bar"

    .line 33
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->HIDE_BAR:Landroid/net/Uri;

    .line 35
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "navigationbar_hide_bar_enabled"

    .line 36
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->HIDE_BAR_ENABLED:Landroid/net/Uri;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    return-void
.end method

.method private loadPinValue()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "navigationbar_hide_bar_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 96
    .local v1, "value":I
    if-nez v1, :cond_0

    move v0, v2

    .line 97
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mPinEnabled:Z

    if-eq v4, v0, :cond_1

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mPinEnabled:Z

    .line 101
    :goto_1
    return v2

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v3

    .line 96
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_1
    move v2, v3

    .line 101
    goto :goto_1
.end method

.method private loadSettingsValue()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "navigationbar_hide_bar"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "value":I
    if-ne v1, v2, :cond_0

    move v0, v2

    .line 87
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mSettingEnabled:Z

    if-eq v4, v0, :cond_1

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mSettingEnabled:Z

    .line 91
    :goto_1
    return v2

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v3

    .line 86
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_1
    move v2, v3

    .line 91
    goto :goto_1
.end method

.method private startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startObserving"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->HIDE_BAR:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->HIDE_BAR_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 82
    return-void
.end method

.method private stopObserving()V
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopObserving"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    return-void
.end method


# virtual methods
.method public isPinEnabled()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mPinEnabled:Z

    return v0
.end method

.method public isSettingEnabled()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mSettingEnabled:Z

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "isChanged":Z
    if-eqz p1, :cond_3

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->loadSettingsValue()Z

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->loadPinValue()Z

    .line 63
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mListener:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mListener:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mSettingEnabled:Z

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mPinEnabled:Z

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;->onChangedSettings(ZZ)V

    .line 66
    :cond_2
    return-void

    .line 58
    :cond_3
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->HIDE_BAR:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->loadSettingsValue()Z

    move-result v0

    goto :goto_0

    .line 60
    :cond_4
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->HIDE_BAR_ENABLED:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->loadPinValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setOnContentChangeListener(Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mListener:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->mListener:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->startObserving()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->stopObserving()V

    goto :goto_0
.end method
