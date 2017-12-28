.class public Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
.super Lcom/android/launcher3/util/ComponentKey;
.source "ShortcutKey.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 18
    return-void
.end method

.method public static fromInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .locals 4
    .param p0, "shortcutInfo"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .prologue
    .line 25
    new-instance v0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    .line 26
    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 30
    const-string v1, "shortcut_id"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "shortcutId":Ljava/lang/String;
    new-instance v1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)V

    return-object v1
.end method

.method public static fromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/item/IconInfo;->getPromisedIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
