.class public Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation


# static fields
.field public static final EXTRA_SHORTCUT_ID:Ljava/lang/String; = "shortcut_id"

.field private static final INTENT_CATEGORY:Ljava/lang/String; = "com.android.launcher3.DEEP_SHORTCUT"


# instance fields
.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .locals 0
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 45
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    new-instance v0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/Context;)V

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastChangedTimestamp()J
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

.method public hasKeyFieldsOnly()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v0

    return v0
.end method

.method public isDeclaredInManifest()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    return v0
.end method

.method public makeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .prologue
    .line 49
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 51
    .local v0, "serialNumber":J
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.launcher3.DEEP_SHORTCUT"

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10200000

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "profile"

    .line 56
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "shortcut_id"

    .line 57
    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
