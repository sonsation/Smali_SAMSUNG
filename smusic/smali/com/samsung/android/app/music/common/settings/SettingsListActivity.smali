.class public abstract Lcom/samsung/android/app/music/common/settings/SettingsListActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "SettingsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;,
        Lcom/samsung/android/app/music/common/settings/SettingsListActivity$MultiWindowChangeListener;,
        Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_POSITION:I


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

.field private mSelectedPosition:I

.field private mSettingItems:Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

.field private mUiPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 167
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$1;-><init>(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 175
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$2;-><init>(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mAdapter:Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->updateContentView(Z)V

    return-void
.end method

.method private setListBackground(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 268
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110275

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mListView:Landroid/widget/ListView;

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02020d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPaddingContentView(I)V
    .locals 4
    .param p1, "paddingHorizontal"    # I

    .prologue
    const/4 v3, 0x0

    .line 257
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0168

    .line 259
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 261
    :cond_0
    const v1, 0x7f12015d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, "contentRoot":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0, p1, v3, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 265
    :cond_1
    return-void
.end method

.method private updateContentView(Z)V
    .locals 6
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 235
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-nez v5, :cond_0

    .line 254
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 240
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v1, -0x1

    .line 241
    .local v1, "paddingHorizontal":I
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    .line 242
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v2

    .line 243
    .local v2, "rectInfo":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 245
    .local v3, "rectWidth":I
    const v5, 0x7f0d006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 246
    .local v0, "defaultWidth":I
    if-ge v0, v3, :cond_2

    .line 247
    sub-int v5, v3, v0

    div-int/lit8 v1, v5, 0x2

    .line 253
    .end local v0    # "defaultWidth":I
    .end local v2    # "rectInfo":Landroid/graphics/Rect;
    .end local v3    # "rectWidth":I
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->setPaddingContentView(I)V

    goto :goto_0

    .line 249
    .restart local v0    # "defaultWidth":I
    .restart local v2    # "rectInfo":Landroid/graphics/Rect;
    .restart local v3    # "rectWidth":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method abstract getEntryPosition()I
.end method

.method getSelectedPosition()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mSelectedPosition:I

    return v0
.end method

.method getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mSettingItems:Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    return-object v0
.end method

.method getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mUiPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->isMultiWindow()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->updateContentView(Z)V

    .line 130
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->setListBackground(I)V

    .line 131
    return-void

    .line 128
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->setPaddingContentView(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v5, 0x7f040249

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onCreateSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mSettingItems:Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    .line 69
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mSettingItems:Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemsCount()I

    move-result v0

    .line 70
    .local v0, "count":I
    new-array v4, v0, [Ljava/lang/String;

    .line 71
    .local v4, "settingItemNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 72
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mSettingItems:Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemName(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const-string v5, "music_player_pref"

    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mUiPreference:Landroid/content/SharedPreferences;

    .line 77
    const v5, 0x7f12027c

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mListView:Landroid/widget/ListView;

    .line 78
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 81
    new-instance v5, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;

    const v6, 0x7f0400b7

    invoke-direct {v5, p0, p0, v6, v4}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;-><init>(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mAdapter:Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;

    .line 82
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mAdapter:Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onSetSettingDescription()I

    move-result v1

    .line 85
    .local v1, "description":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 86
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040248

    .line 87
    invoke-virtual {v5, v6, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 88
    .local v2, "descriptionTextView":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 91
    .end local v2    # "descriptionTextView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->getEntryPosition()I

    move-result v5

    invoke-virtual {p0, v5, v8}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->setItemChecked(IZ)V

    .line 93
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v5, v6, :cond_2

    .line 94
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 95
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    new-instance v6, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$MultiWindowChangeListener;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$MultiWindowChangeListener;-><init>(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)V

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    .line 97
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->isMultiWindow()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->updateContentView(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->setListBackground(I)V

    .line 100
    :cond_2
    return-void
.end method

.method abstract onCreateSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->release()V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 120
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mSelectedPosition:I

    .line 165
    return-void
.end method

.method onSetSettingDescription()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 278
    const/4 v0, -0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onStart()V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 106
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 111
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onStop()V

    .line 112
    return-void
.end method

.method savePreference(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mUiPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    return-void
.end method

.method savePreference(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mUiPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    return-void
.end method

.method setItemChecked(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 138
    iput p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mSelectedPosition:I

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 140
    return-void
.end method
