.class public Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "TabSettingReorderFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;,
        Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

.field private mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

.field private final mItemTouchHelperCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

.field private final mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field protected mReorderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 160
    new-instance v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    .line 269
    new-instance v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mItemTouchHelperCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mAdapter:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    return-object v0
.end method

.method private makeEnabledReorderItems(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "reorderItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 176
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 177
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->isChecked:Z

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    iget v3, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->key:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 180
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private makeEntireReorderItems(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "reorderItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 191
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 192
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    iget v3, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->key:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 194
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static newInstance(Z)Landroid/app/Fragment;
    .locals 3
    .param p0, "isReorderIconRightPosition"    # Z

    .prologue
    .line 69
    new-instance v1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;-><init>()V

    .line 70
    .local v1, "fg":Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "reorder_icon_position"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v1
.end method


# virtual methods
.method protected final getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "music_player_pref"

    const/4 v2, 0x0

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mPreferences:Landroid/content/SharedPreferences;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method protected makeReorderArray()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 217
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->getAllTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "allTabs":Ljava/lang/String;
    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v6, "|"

    invoke-direct {v5, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    new-instance v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;)V

    .line 222
    .local v3, "item":Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 223
    .local v4, "listType":I
    iput v4, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->key:I

    .line 224
    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListTypeTextResId(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->name:Ljava/lang/String;

    .line 225
    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/TabUtils;->isFixedTab(I)Z

    move-result v6

    iput-boolean v6, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->fixedItem:Z

    .line 226
    invoke-static {v2, v4}, Lcom/samsung/android/app/music/common/util/TabUtils;->isEnabledTab(Landroid/content/Context;I)Z

    move-result v6

    iput-boolean v6, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->isChecked:Z

    .line 227
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v3    # "item":Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;
    .end local v4    # "listType":I
    :cond_0
    return-object v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 81
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    .line 83
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "402"

    .line 84
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v0, 0x7f0401f9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mReorderItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    .line 144
    .local v6, "item":Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->MAP:Landroid/util/SparseArray;

    iget v1, v6, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->key:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "eventId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "402"

    iget-boolean v3, v6, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->isChecked:Z

    if-eqz v3, :cond_0

    const-string v3, "ON"

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mReorderItemList:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->getFPrefKeyForManageTabs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, v6, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->isChecked:Z

    if-eqz v0, :cond_1

    const-string v0, "On"

    .line 153
    :goto_2
    invoke-static {v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    const-string v3, "OFF"

    goto :goto_1

    .line 154
    :cond_1
    const-string v0, "Off"

    goto :goto_2

    .line 157
    .end local v2    # "eventId":Ljava/lang/String;
    .end local v6    # "item":Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    .line 158
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 126
    const-string/jumbo v0, "tab_menu_list"

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mReorderItemList:Ljava/util/ArrayList;

    .line 127
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->makeEnabledReorderItems(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "tab_menu_list_order"

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mReorderItemList:Ljava/util/ArrayList;

    .line 129
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->makeEntireReorderItems(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPause()V

    .line 131
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;->addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;->removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    .line 139
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 98
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_0

    .line 99
    const-string v2, "ManageMyMusicTabs"

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v4, 0x0

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/global/LaunchTabSettingsResponseExecutor;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/music/bixby/executor/settings/global/LaunchTabSettingsResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->makeReorderArray()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mReorderItemList:Ljava/util/ArrayList;

    .line 105
    const v2, 0x7f12052c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 106
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 107
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-direct {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)V

    .line 109
    new-instance v2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mAdapter:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    .line 110
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mAdapter:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V

    .line 112
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mItemTouchHelperCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;-><init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->attachToRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 114
    return-void
.end method

.method protected final savePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    return-void
.end method

.method public startReorder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->startDrag(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 170
    return-void
.end method
