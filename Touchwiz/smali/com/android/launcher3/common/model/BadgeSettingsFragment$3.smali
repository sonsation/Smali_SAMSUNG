.class Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;
.super Ljava/lang/Object;
.source "BadgeSettingsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/BadgeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;)I
    .locals 3
    .param p1, "a"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    .param p2, "b"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .prologue
    .line 530
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 535
    :goto_0
    return v0

    .line 532
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    const/4 v0, 0x1

    goto :goto_0

    .line 535
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 525
    check-cast p1, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    check-cast p2, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;->compare(Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;)I

    move-result v0

    return v0
.end method
