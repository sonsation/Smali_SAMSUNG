.class Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;
.super Lcom/android/launcher3/common/base/item/IconInfo;
.source "DeepShortcutsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnbadgedShortcutInfo"
.end annotation


# instance fields
.field public final mDetail:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 0
    .param p1, "shortcutInfo"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 677
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 678
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;->mDetail:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .line 679
    return-void
.end method
