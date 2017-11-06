.class public final Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "MenuPopupWindow.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$MenuPopupRefreshable;,
        Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;,
        Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$MenuAdapter;
    }
.end annotation


# static fields
.field private static final MAX_VISIBLE_COUNT:I = 0x6

.field private static final UNSPECIFIED_MEASURE_SPEC:I


# instance fields
.field private final mCallback:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;

.field private final mContext:Landroid/content/Context;

.field private mMaxVisibleCount:I

.field private mMenuAdapter:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$MenuAdapter;

.field private final mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupMenu:Landroid/widget/PopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->UNSPECIFIED_MEASURE_SPEC:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMenuItems:Ljava/util/List;

    .line 47
    const/4 v1, 0x6

    iput v1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMaxVisibleCount:I

    .line 51
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->setModal(Z)V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mContext:Landroid/content/Context;

    .line 55
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 56
    iput-object p3, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mCallback:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 59
    .local v0, "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->initializeMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V

    .line 60
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->createMenuItems(Landroid/view/Menu;)V

    .line 62
    new-instance v1, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$1;-><init>(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    new-instance v1, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;-><init>(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMenuItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;)Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mCallback:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->createMenuItems(Landroid/view/Menu;)V

    return-void
.end method

.method private createMenuItems(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 144
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 145
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    .line 146
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 147
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 148
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMenuItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_1
    new-instance v3, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$MenuAdapter;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMenuItems:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$MenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMenuAdapter:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$MenuAdapter;

    .line 153
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMenuAdapter:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$MenuAdapter;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    return-void
.end method

.method private initializeMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;
    .param p3, "needToPrepare"    # Z

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mCallback:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;->onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 138
    if-eqz p3, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mCallback:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;->onPrepareMenu(Landroid/view/Menu;)V

    .line 141
    :cond_0
    return-void
.end method

.method private measureContentSize(Landroid/widget/ListAdapter;)[I
    .locals 14
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v13, 0x2

    const/4 v12, -0x2

    .line 157
    if-nez p1, :cond_0

    .line 158
    new-array v10, v13, [I

    fill-array-data v10, :array_0

    .line 194
    :goto_0
    return-object v10

    .line 161
    :cond_0
    const/4 v9, 0x0

    .line 162
    .local v9, "width":I
    const/4 v2, 0x0

    .line 163
    .local v2, "height":I
    const/4 v4, 0x0

    .line 164
    .local v4, "itemType":I
    const/4 v5, 0x0

    .line 167
    .local v5, "itemView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 168
    .local v6, "listView":Landroid/widget/ListView;
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 169
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 170
    invoke-interface {p1, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 171
    .local v8, "positionType":I
    if-eq v8, v4, :cond_1

    .line 172
    move v4, v8

    .line 173
    const/4 v5, 0x0

    .line 175
    :cond_1
    invoke-interface {p1, v3, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 176
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_2

    .line 177
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :cond_2
    sget v10, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->UNSPECIFIED_MEASURE_SPEC:I

    sget v11, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->UNSPECIFIED_MEASURE_SPEC:I

    invoke-virtual {v5, v10, v11}, Landroid/view/View;->measure(II)V

    .line 182
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 185
    .end local v8    # "positionType":I
    :cond_3
    if-eqz v5, :cond_5

    .line 186
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 187
    .local v7, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 191
    :cond_4
    iget v10, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMaxVisibleCount:I

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    mul-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    add-int v2, v10, v11

    .line 194
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "padding":Landroid/graphics/Rect;
    :cond_5
    new-array v10, v13, [I

    const/4 v11, 0x0

    aput v9, v10, v11

    const/4 v11, 0x1

    aput v2, v10, v11

    goto :goto_0

    .line 158
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public refresh()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 93
    .local v0, "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->isShowing()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->initializeMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V

    .line 94
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->createMenuItems(Landroid/view/Menu;)V

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMenuAdapter:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$MenuAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$MenuAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method

.method public setMaxVisibleCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 132
    const/4 v0, 0x6

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMaxVisibleCount:I

    .line 133
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 100
    iget-object v9, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mMenuAdapter:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$MenuAdapter;

    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->measureContentSize(Landroid/widget/ListAdapter;)[I

    move-result-object v4

    .line 101
    .local v4, "contentSize":[I
    aget v5, v4, v12

    .line 102
    .local v5, "contentWidth":I
    aget v3, v4, v11

    .line 105
    .local v3, "contentHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 107
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 108
    .local v1, "anchorDrawingLocation":[I
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 110
    iget-object v9, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 111
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 112
    .local v6, "display":Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 113
    .local v8, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 116
    iget v9, v8, Landroid/graphics/Point;->x:I

    aget v10, v1, v12

    sub-int v7, v9, v10

    .line 117
    .local v7, "rightSpace":I
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->setWidth(I)V

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 121
    .local v2, "anchorHeight":I
    aget v9, v1, v11

    if-le v3, v9, :cond_1

    .line 122
    aget v9, v1, v11

    div-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->setHeight(I)V

    .line 126
    :goto_0
    add-int v9, v3, v2

    neg-int v9, v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 128
    .end local v1    # "anchorDrawingLocation":[I
    .end local v2    # "anchorHeight":I
    .end local v6    # "display":Landroid/view/Display;
    .end local v7    # "rightSpace":I
    .end local v8    # "size":Landroid/graphics/Point;
    :cond_0
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 129
    return-void

    .line 124
    .restart local v1    # "anchorDrawingLocation":[I
    .restart local v2    # "anchorHeight":I
    .restart local v6    # "display":Landroid/view/Display;
    .restart local v7    # "rightSpace":I
    .restart local v8    # "size":Landroid/graphics/Point;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->setHeight(I)V

    goto :goto_0
.end method
