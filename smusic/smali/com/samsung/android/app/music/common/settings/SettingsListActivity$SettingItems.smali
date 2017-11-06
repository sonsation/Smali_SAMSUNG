.class abstract Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
.super Ljava/lang/Object;
.source "SettingsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/SettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SettingItems"
.end annotation


# instance fields
.field private final mSettingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->mSettingItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addItem(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "name"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->mSettingItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method getSettingItemName(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->mSettingItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getSettingItemPosition(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 325
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->mSettingItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 326
    .local v0, "count":I
    const/4 v2, 0x0

    .line 327
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 328
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemValue(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 329
    move v2, v1

    .line 333
    :cond_0
    return v2

    .line 327
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getSettingItemValue(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->mSettingItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getSettingItemsCount()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->mSettingItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
