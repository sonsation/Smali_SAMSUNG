.class public Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "MyStationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;,
        Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final HIDDEN:Ljava/lang/String; = "1"

.field private static final KEY_STATION_ID:Ljava/lang/String; = "station_id"

.field private static final KEY_STATION_NAME:Ljava/lang/String; = "station_name"

.field private static final LOG_TAG:Ljava/lang/String; = "MyStationsAdapter"

.field private static final MENU_ADD_STATION:I = 0x3e9

.field private static final MENU_EDIT_STATION:I = 0x3eb

.field private static final MENU_REMOVE_STATION:I = 0x3ea


# instance fields
.field private mClickedStationID:Ljava/lang/String;

.field private mClickedStationName:Ljava/lang/String;

.field private mMenuItemClick:Landroid/widget/PopupMenu$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<*>;"
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mMenuItemClick:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 123
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mClickedStationID:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mClickedStationName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mClickedStationID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mClickedStationID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mClickedStationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mClickedStationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;I)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;I)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;Landroid/database/Cursor;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getContextMenuPopup(Landroid/database/Cursor;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/PopupMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mMenuItemClick:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getContextMenuPopup(Landroid/database/Cursor;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/PopupMenu;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "stationId"    # Ljava/lang/String;
    .param p4, "stationType"    # Ljava/lang/String;
    .param p5, "stationName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 209
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 211
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    :cond_0
    const/4 v1, 0x0

    .line 237
    .end local v1    # "popupMenu":Landroid/widget/PopupMenu;
    :cond_1
    :goto_0
    return-object v1

    .line 215
    .restart local v1    # "popupMenu":Landroid/widget/PopupMenu;
    :cond_2
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mClickedStationID:Ljava/lang/String;

    .line 216
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mClickedStationName:Ljava/lang/String;

    .line 218
    const-string v2, "MyStationsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContextMenuPopup - station id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "station_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v2, "station_name"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->isDeepLinkStation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x3e9

    const v4, 0x7f0a02f9

    invoke-interface {v2, v6, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 232
    :goto_1
    const-string v2, "01"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "03"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x3eb

    const/4 v4, 0x2

    const v5, 0x7f0a02fb

    .line 234
    invoke-interface {v2, v6, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x3ea

    const v4, 0x7f0a02fa

    .line 229
    invoke-interface {v2, v6, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private isDeepLinkStation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "currStationID"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.fragment.deep_link_station_id"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "stationID":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getStationIdList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v2, "stationIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 198
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 199
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 200
    const-string/jumbo v3, "station_id"

    .line 201
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-object v2
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 138
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 140
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v7, "station_station_name"

    .line 143
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "stationName":Ljava/lang/String;
    const-string/jumbo v7, "station_type"

    .line 145
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "stationType":Ljava/lang/String;
    const-string/jumbo v7, "station_is_hidden"

    .line 147
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "hiddenYn":Ljava/lang/String;
    const-string/jumbo v7, "station_ordinal"

    .line 149
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 151
    .local v3, "stationOrdinal":I
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$800(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const-string v7, "01"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 154
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$900(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$900(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$1100(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$1200(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 170
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$1200(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$1200(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->isActionModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    return-void

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$900(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    const-string v7, "03"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 161
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$1100(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$1100(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v5, v6

    .line 191
    goto :goto_1
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fb

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 133
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;

    move-result-object v0

    return-object v0
.end method
