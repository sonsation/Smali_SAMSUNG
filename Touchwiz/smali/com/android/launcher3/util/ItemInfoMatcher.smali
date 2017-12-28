.class public abstract Lcom/android/launcher3/util/ItemInfoMatcher;
.super Ljava/lang/Object;
.source "ItemInfoMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ofComponents(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Lcom/android/launcher3/util/ItemInfoMatcher;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "components":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher$1;-><init>(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    return-object v0
.end method

.method public static ofPackages(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Lcom/android/launcher3/util/ItemInfoMatcher;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher$2;-><init>(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    return-object v0
.end method

.method public static ofShortcutKeys(Ljava/util/HashSet;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;",
            ">;)",
            "Lcom/android/launcher3/util/ItemInfoMatcher;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$3;-><init>(Ljava/util/HashSet;)V

    return-object v0
.end method


# virtual methods
.method public abstract matches(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z
.end method
