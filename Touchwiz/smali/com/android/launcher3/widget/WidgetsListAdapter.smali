.class public Lcom/android/launcher3/widget/WidgetsListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WidgetsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/launcher3/widget/WidgetsRowViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PRESET_INDENT_SIZE_TABLET:I = 0x38

.field private static final TAG:Ljava/lang/String; = "WidgetsListAdapter"


# instance fields
.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mIndent:I

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

.field private mWidgetsModel:Lcom/android/launcher3/common/model/WidgetsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "iconLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 76
    iput-object p3, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 77
    iput-object p4, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 79
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsListAdapter;->setContainerHeight()V

    .line 80
    return-void
.end method

.method private getWidgetPreviewLoader()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    return-object v0
.end method

.method private setContainerHeight()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    .local v0, "r":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isLargeTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    const/high16 v1, 0x42600000    # 56.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    .line 209
    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/android/launcher3/common/model/WidgetsModel;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/android/launcher3/common/model/WidgetsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/WidgetsModel;->getPackageSize()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 194
    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onBindViewHolder(Lcom/android/launcher3/widget/WidgetsRowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/widget/WidgetsRowViewHolder;I)V
    .locals 13
    .param p1, "holder"    # Lcom/android/launcher3/widget/WidgetsRowViewHolder;
    .param p2, "pos"    # I

    .prologue
    const/4 v12, 0x0

    .line 96
    iget-object v10, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/android/launcher3/common/model/WidgetsModel;

    invoke-virtual {v10, p2}, Lcom/android/launcher3/common/model/WidgetsModel;->getSortedWidgets(I)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "infoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->getContent()Landroid/view/ViewGroup;

    move-result-object v10

    const v11, 0x7f11011a

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 107
    .local v8, "row":Landroid/view/ViewGroup;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    sub-int v0, v10, v11

    .line 109
    .local v0, "diff":I
    if-lez v0, :cond_0

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 111
    iget-object v10, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f04005a

    invoke-virtual {v10, v11, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/widget/view/WidgetCell;

    .line 115
    .local v9, "widget":Lcom/android/launcher3/widget/view/WidgetCell;
    iget-object v10, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/widget/view/WidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v10, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/widget/view/WidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    invoke-virtual {v9}, Lcom/android/launcher3/widget/view/WidgetCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 118
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v10, v9, Lcom/android/launcher3/widget/view/WidgetCell;->cellSize:I

    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    iget v10, v9, Lcom/android/launcher3/widget/view/WidgetCell;->cellSize:I

    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    invoke-virtual {v9, v5}, Lcom/android/launcher3/widget/view/WidgetCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "widget":Lcom/android/launcher3/widget/view/WidgetCell;
    :cond_0
    if-gez v0, :cond_1

    .line 125
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 126
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    .end local v1    # "i":I
    :cond_1
    iget-object v10, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/android/launcher3/common/model/WidgetsModel;

    invoke-virtual {v10, p2}, Lcom/android/launcher3/common/model/WidgetsModel;->getPackageItemInfo(I)Lcom/android/launcher3/common/model/PackageItemInfo;

    move-result-object v4

    .line 136
    .local v4, "infoOut":Lcom/android/launcher3/common/model/PackageItemInfo;
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsListAdapter;->getWidgetPreviewLoader()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    move-result-object v10

    if-nez v10, :cond_3

    .line 155
    :cond_2
    return-void

    .line 139
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_2

    .line 140
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/widget/view/WidgetCell;

    .line 141
    .restart local v9    # "widget":Lcom/android/launcher3/widget/view/WidgetCell;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v10, :cond_5

    .line 142
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 143
    .local v2, "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    new-instance v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v10, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v11, 0x0

    invoke-direct {v7, v10, v2, v11}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 144
    .local v7, "pawi":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    invoke-virtual {v9, v7}, Lcom/android/launcher3/widget/view/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v10, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-virtual {v9, v2, v10}, Lcom/android/launcher3/widget/view/WidgetCell;->applyFromAppWidgetProviderInfo(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)V

    .line 152
    .end local v2    # "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .end local v7    # "pawi":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    :cond_4
    :goto_3
    invoke-virtual {v9}, Lcom/android/launcher3/widget/view/WidgetCell;->ensurePreview()V

    .line 153
    invoke-virtual {v9, v12}, Lcom/android/launcher3/widget/view/WidgetCell;->setVisibility(I)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 146
    :cond_5
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Landroid/content/pm/ResolveInfo;

    if-eqz v10, :cond_4

    .line 147
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 148
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    new-instance v6, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {v6, v2}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 149
    .local v6, "pasi":Lcom/android/launcher3/widget/PendingAddShortcutInfo;
    invoke-virtual {v9, v6}, Lcom/android/launcher3/widget/view/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 150
    iget-object v10, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-virtual {v9, v10, v2, v11}, Lcom/android/launcher3/widget/view/WidgetCell;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)V

    goto :goto_3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/widget/WidgetsRowViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040063

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 165
    .local v1, "container":Landroid/view/ViewGroup;
    const v2, 0x7f11011a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 169
    .local v0, "cellList":Landroid/widget/LinearLayout;
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 171
    new-instance v2, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-direct {v2, v1}, Lcom/android/launcher3/widget/WidgetsRowViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v2
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onFailedToRecycleView(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onViewRecycled(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->getContent()Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f11011a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 178
    .local v1, "row":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 179
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetCell;

    .line 180
    .local v2, "widget":Lcom/android/launcher3/widget/view/WidgetCell;
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetCell;->clear()V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "widget":Lcom/android/launcher3/widget/view/WidgetCell;
    :cond_0
    return-void
.end method

.method public setWidgetsModel(Lcom/android/launcher3/common/model/WidgetsModel;)V
    .locals 0
    .param p1, "w"    # Lcom/android/launcher3/common/model/WidgetsModel;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/android/launcher3/common/model/WidgetsModel;

    .line 84
    return-void
.end method
