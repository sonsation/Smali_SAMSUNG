.class public Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SettingFontChangeManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_FONT_SWITCH:Ljava/lang/String; = "accessiblity_font_switch"

.field private static final ACCESSIBILITY_LARGER_FONT_LEVEL_10:I = 0x9

.field private static final ACCESSIBILITY_LARGER_FONT_LEVEL_11:I = 0xa

.field private static final ACCESSIBILITY_LARGER_FONT_LEVEL_8:I = 0x7

.field private static final ACCESSIBILITY_LARGER_FONT_LEVEL_9:I = 0x8

.field private static final ACTION_FONT_SIZE_CHANGED:Ljava/lang/String; = "com.samsung.settings.FONT_SIZE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "Settings"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mOnLargerFontChangeObservers:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

.field private final mSettingsFontChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 43
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mOnLargerFontChangeObservers:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    .line 64
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mSettingsFontChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->getLargerFontResId(Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mOnLargerFontChangeObservers:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    return-object v0
.end method

.method private getLargerFontResId(Landroid/content/ContentResolver;)I
    .locals 8
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 77
    const-string v5, "accessiblity_font_switch"

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, "fontSwitch":I
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isLargerFontEnabled() - fontSwitch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-ne v0, v1, :cond_0

    .line 80
    .local v1, "isLargerFontChangeEnabled":Z
    :goto_0
    if-nez v1, :cond_1

    .line 104
    :goto_1
    return v3

    .end local v1    # "isLargerFontChangeEnabled":Z
    :cond_0
    move v1, v4

    .line 79
    goto :goto_0

    .line 83
    .restart local v1    # "isLargerFontChangeEnabled":Z
    :cond_1
    sget-object v4, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->FONT_SIZE:Ljava/lang/String;

    .line 84
    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 85
    .local v2, "level":I
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getLargerFontResId() - font level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v3, -0x1

    .line 88
    .local v3, "resId":I
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 90
    :pswitch_0
    sget v3, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_text1_larger_size_8:I

    .line 91
    goto :goto_1

    .line 93
    :pswitch_1
    sget v3, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_text1_larger_size_9:I

    .line 94
    goto :goto_1

    .line 96
    :pswitch_2
    sget v3, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_text1_larger_size_10:I

    .line 97
    goto :goto_1

    .line 99
    :pswitch_3
    sget v3, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_text1_larger_size_11:I

    .line 100
    goto :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mOnLargerFontChangeObservers:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;->add(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mOnLargerFontChangeObservers:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->getLargerFontResId(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;->notifyLargerFontChanged(I)V

    .line 111
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivityStarted(Landroid/app/Activity;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mSettingsFontChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mSettingsFontChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivityStopped(Landroid/app/Activity;)V

    .line 62
    return-void
.end method

.method public removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->mOnLargerFontChangeObservers:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;->remove(Ljava/lang/Object;)V

    .line 116
    return-void
.end method
