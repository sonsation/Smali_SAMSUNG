.class Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScreenSizePreviewSettingsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 127
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->loadTiles()V

    .line 125
    return-void
.end method

.method private createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040297

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "row":Landroid/view/View;
    return-object v0
.end method

.method private loadTiles()V
    .locals 15

    .prologue
    .line 188
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;>;"
    new-instance v6, Lcom/android/settings/SettingsActivity;

    invoke-direct {v6}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 191
    .local v6, "settingsActivity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v6}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 195
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get5()[Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "tileIds":[Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 200
    .local v8, "tempCurrentTileId":Ljava/lang/String;
    const/4 v4, 0x0

    .end local v8    # "tempCurrentTileId":Ljava/lang/String;
    .local v4, "n":I
    :goto_1
    array-length v13, v10

    if-ge v4, v13, :cond_8

    .line 201
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_4

    .line 202
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v13}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v13

    if-ge v3, v13, :cond_3

    .line 203
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v13, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v9

    .line 204
    .local v9, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v13, v9, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v14, "com.android.settings.tileid"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 205
    .local v8, "tempCurrentTileId":Ljava/lang/String;
    if-eqz v8, :cond_6

    aget-object v13, v10, v4

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 206
    const/4 v12, 0x0

    .line 207
    .local v12, "title":Ljava/lang/String;
    const/4 v7, 0x0

    .line 208
    .local v7, "summary":Ljava/lang/String;
    const/4 v1, 0x0

    .line 209
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v13, v9, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    if-eqz v13, :cond_0

    .line 210
    iget-object v13, v9, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 211
    .end local v12    # "title":Ljava/lang/String;
    :cond_0
    iget-object v13, v9, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    if-eqz v13, :cond_1

    .line 212
    iget-object v13, v9, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    .end local v7    # "summary":Ljava/lang/String;
    :cond_1
    iget-object v13, v9, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v13, :cond_2

    .line 214
    iget-object v13, v9, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 215
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v11, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v13, v9, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-direct {v11, v12, v7, v13, v1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 217
    .local v11, "tileItem":Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v8    # "tempCurrentTileId":Ljava/lang/String;
    .end local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v11    # "tileItem":Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;
    :cond_3
    if-eqz v8, :cond_7

    aget-object v13, v10, v4

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 222
    const/4 v8, 0x0

    .line 200
    .end local v3    # "j":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 197
    .end local v2    # "i":I
    .end local v4    # "n":I
    .end local v10    # "tileIds":[Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get4()[Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "tileIds":[Ljava/lang/String;
    goto :goto_0

    .line 202
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "n":I
    .restart local v8    # "tempCurrentTileId":Ljava/lang/String;
    .restart local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 201
    .end local v8    # "tempCurrentTileId":Ljava/lang/String;
    .end local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 227
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_8
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->addAll(Ljava/util/Collection;)V

    .line 187
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 134
    const-string/jumbo v5, "SettingsListView"

    const-string/jumbo v6, "getView():"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p2, :cond_3

    move-object v2, p2

    .line 138
    .local v2, "row":Landroid/view/View;
    :goto_0
    const v5, 0x1020016

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 139
    .local v4, "title":Landroid/widget/TextView;
    const v5, 0x1020010

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 140
    .local v3, "summary":Landroid/widget/TextView;
    const v5, 0x1020006

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .local v0, "appIcon":Landroid/widget/ImageView;
    const v5, 0x7f110268

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 143
    .local v1, "divider":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 144
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get1()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get0()F

    move-result v6

    mul-float/2addr v5, v6

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get2()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 146
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mCategory:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v5

    .line 151
    if-eqz v5, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mCategory:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 155
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 153
    invoke-virtual {v0, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    :cond_1
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    if-eqz v1, :cond_2

    .line 171
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get3()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_2
    :goto_1
    return-object v2

    .line 136
    .end local v0    # "appIcon":Landroid/widget/ImageView;
    .end local v1    # "divider":Landroid/view/View;
    .end local v2    # "row":Landroid/view/View;
    .end local v3    # "summary":Landroid/widget/TextView;
    .end local v4    # "title":Landroid/widget/TextView;
    :cond_3
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    .line 174
    .restart local v0    # "appIcon":Landroid/widget/ImageView;
    .restart local v1    # "divider":Landroid/view/View;
    .restart local v2    # "row":Landroid/view/View;
    .restart local v3    # "summary":Landroid/widget/TextView;
    .restart local v4    # "title":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
