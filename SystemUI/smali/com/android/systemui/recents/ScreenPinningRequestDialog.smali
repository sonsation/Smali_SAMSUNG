.class public Lcom/android/systemui/recents/ScreenPinningRequestDialog;
.super Ljava/lang/Object;
.source "ScreenPinningRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;
    }
.end annotation


# static fields
.field private static mDialog:Landroid/app/AlertDialog;


# instance fields
.field public DEVICE_TYPE_WIFI_ONLY:Z

.field private filter:Landroid/content/IntentFilter;

.field private mAactivityLabel:Ljava/lang/String;

.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field public final mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private taskId:I


# direct methods
.method static synthetic -get0()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAactivityLabel:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->DEVICE_TYPE_WIFI_ONLY:Z

    .line 143
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;-><init>(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 54
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->DEVICE_TYPE_WIFI_ONLY:Z

    .line 50
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isExcluded()Z
    .locals 8

    .prologue
    const/high16 v7, 0x800000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 198
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 199
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 201
    .local v0, "quietProfiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 200
    invoke-virtual {v3, v5, v4, v5, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    .line 202
    .local v1, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    :cond_0
    return v6

    .line 203
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 204
    .local v2, "recentsTopTask":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v2, :cond_0

    .line 205
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_0

    .line 209
    return v5
.end method


# virtual methods
.method public checkUnableToPin()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->isExcluded()Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    .line 184
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 185
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 186
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_2

    .line 187
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    return v4

    .line 190
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 193
    :cond_2
    return v4
.end method

.method public clearPrompt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    sget-object v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v1, "clearPrompt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->unregisterReceivers()V

    .line 62
    sget-object v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 63
    sput-object v2, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 58
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 128
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->checkUnableToPin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAactivityLabel:Ljava/lang/String;

    aput-object v4, v3, v5

    const v4, 0x7f0f0277

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 132
    const-string/jumbo v1, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v2, "checkUnableToPin is true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    .line 127
    return-void

    .line 135
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->taskId:I

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerReceivers()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string/jumbo v0, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v1, "registerReceivers - mContext is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showPrompt(ILjava/lang/String;)V
    .locals 13
    .param p1, "taskId"    # I
    .param p2, "activityLabel"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->registerReceivers()V

    .line 70
    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAactivityLabel:Ljava/lang/String;

    .line 71
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->taskId:I

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->isExcluded()Z

    move-result v7

    .line 74
    .local v7, "isExcluded":Z
    const-string/jumbo v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "NEW_LINE":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 76
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    const v12, 0x7f0f0275

    invoke-virtual {v10, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "title":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0f026e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "description_1":Ljava/lang/String;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->DEVICE_TYPE_WIFI_ONLY:Z

    if-eqz v10, :cond_1

    .line 80
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0270

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "description_2":Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    .line 87
    .local v6, "hasPermanentMenuKey":Z
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v10, :cond_2

    .line 88
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 89
    .local v1, "accessibilityEnabled":Z
    const-string/jumbo v10, "Recents_ScreenPinningRequestDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "accessibilityEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v1    # "accessibilityEnabled":Z
    :goto_2
    if-eqz v6, :cond_4

    .line 96
    if-eqz v1, :cond_3

    .line 97
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0274

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "description_3":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x5

    .line 106
    .local v8, "theme":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v10, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 107
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    if-eqz v7, :cond_6

    .line 110
    const v10, 0x7f0f0276

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 111
    const v10, 0x104000a

    invoke-virtual {v2, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    :goto_4
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    sput-object v10, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 119
    sget-object v10, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d8

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 120
    sget-object v10, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 122
    sget-object v10, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 123
    const-string/jumbo v10, "Recents_ScreenPinningRequestDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showPrompt isExcluded : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 77
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "description_1":Ljava/lang/String;
    .end local v4    # "description_2":Ljava/lang/String;
    .end local v5    # "description_3":Ljava/lang/String;
    .end local v6    # "hasPermanentMenuKey":Z
    .end local v8    # "theme":I
    .end local v9    # "title":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0f026d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "title":Ljava/lang/String;
    goto/16 :goto_0

    .line 81
    .restart local v3    # "description_1":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0f026f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "description_2":Ljava/lang/String;
    goto/16 :goto_1

    .line 91
    .restart local v6    # "hasPermanentMenuKey":Z
    :cond_2
    const/4 v1, 0x0

    .line 92
    .local v1, "accessibilityEnabled":Z
    const-string/jumbo v10, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v11, "mAccessibilityService is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 98
    .end local v1    # "accessibilityEnabled":Z
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0272

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "description_3":Ljava/lang/String;
    goto/16 :goto_3

    .line 100
    .end local v5    # "description_3":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 101
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0273

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "description_3":Ljava/lang/String;
    goto/16 :goto_3

    .line 102
    .end local v5    # "description_3":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0f0271

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "description_3":Ljava/lang/String;
    goto/16 :goto_3

    .line 113
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v8    # "theme":I
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    const v10, 0x7f0f0278

    invoke-virtual {v2, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    const v10, 0x7f0f0279

    invoke-virtual {v2, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4
.end method

.method public unregisterReceivers()V
    .locals 3

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    .line 168
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string/jumbo v1, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v2, "unregisterReceivers - mContext is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
