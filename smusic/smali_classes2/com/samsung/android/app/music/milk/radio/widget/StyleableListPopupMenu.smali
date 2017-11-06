.class public Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;
.super Landroid/widget/ListPopupWindow;
.source "StyleableListPopupMenu.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StyleableListPopupMenu"


# instance fields
.field private isLeft:Z

.field private isRight:Z

.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mCtx:Landroid/content/Context;

.field protected mItemClickLstnr:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMaxWidth:I

.field protected mMenu:Landroid/view/Menu;

.field protected mMenuItems:[Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "menuResourceId"    # I
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->isLeft:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->isRight:Z

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    .line 51
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setAnchorView(Landroid/view/View;)V

    .line 53
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p1, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 54
    .local v0, "menuProvider":Landroid/widget/PopupMenu;
    invoke-virtual {v0, p2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 55
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenu:Landroid/view/Menu;

    .line 56
    return-void
.end method

.method private init()Z
    .locals 10

    .prologue
    const v9, 0x7f0d05c7

    const/4 v6, 0x1

    .line 66
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenu:Landroid/view/Menu;

    if-nez v7, :cond_2

    .line 68
    :cond_0
    const/4 v6, 0x0

    .line 114
    :cond_1
    :goto_0
    return v6

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->removeInvisibleItems()V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->getListAdpater()Landroid/widget/ListAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    .line 73
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    new-instance v7, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$1;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setListBackgroud()V

    .line 88
    const/4 v4, 0x0

    .line 89
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->getProperWidth()I

    move-result v4

    .line 90
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setWidth(I)V

    .line 91
    const/4 v7, -0x2

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setHeight(I)V

    .line 92
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setModal(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->getAnchorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 95
    .local v2, "left":I
    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->isLeft:Z

    if-eqz v7, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->getHorizontalOffset()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->getHorizontalOffset()I

    move-result v8

    add-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setHorizontalOffset(I)V

    .line 99
    :cond_3
    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->isRight:Z

    if-eqz v7, :cond_1

    .line 101
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 102
    .local v3, "size":Landroid/graphics/Point;
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 103
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 104
    .local v0, "display":Landroid/view/Display;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_4

    .line 105
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 106
    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 111
    .local v1, "displayWidth":I
    :goto_1
    add-int v7, v2, v4

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    add-float/2addr v7, v8

    int-to-float v8, v1

    sub-float/2addr v7, v8

    neg-float v7, v7

    float-to-int v7, v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setHorizontalOffset(I)V

    goto/16 :goto_0

    .line 108
    .end local v1    # "displayWidth":I
    :cond_4
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .restart local v1    # "displayWidth":I
    goto :goto_1
.end method


# virtual methods
.method public findItem(I)Landroid/view/MenuItem;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 143
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v3, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 145
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 150
    .end local v1    # "item":Landroid/view/MenuItem;
    :goto_1
    return-object v1

    .line 142
    .restart local v1    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getListAdpater()Landroid/widget/ListAdapter;
    .locals 6

    .prologue
    .line 243
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$2;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    const v3, 0x7f04010c

    const v4, 0x7f120324

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenuItems:[Landroid/view/MenuItem;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$2;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;Landroid/content/Context;II[Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public getProperWidth()I
    .locals 18

    .prologue
    .line 204
    const/4 v8, 0x0

    .line 205
    .local v8, "maxOrder":I
    const/4 v7, 0x0

    .line 206
    .local v7, "maxLength":I
    const/4 v4, 0x0

    .line 207
    .local v4, "i":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenuItems:[Landroid/view/MenuItem;

    array-length v14, v13

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_1

    aget-object v9, v13, v12

    .line 208
    .local v9, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v9}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ge v7, v15, :cond_0

    .line 209
    const-string v15, "StyleableListPopupMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getView : tv.getMeasuredWidth(): Title: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v9}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-interface {v9}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 211
    move v8, v4

    .line 213
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 207
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 216
    .end local v9    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v11, "tv":Landroid/widget/TextView;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenuItems:[Landroid/view/MenuItem;

    aget-object v13, v13, v8

    invoke-interface {v13}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "itemText":Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d05c7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v10, v12

    .line 221
    .local v10, "padding":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v10, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 222
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d05c5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 224
    .local v2, "fFontSize":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v1, v12, Landroid/util/DisplayMetrics;->density:F

    .line 225
    .local v1, "fDensity":F
    div-float v12, v2, v1

    float-to-int v3, v12

    .line 226
    .local v3, "fontSize":I
    const/4 v12, 0x1

    int-to-float v13, v3

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 227
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 228
    const-string v12, "StyleableListPopupMenu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getView : tv.getMeasuredWidth(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " maxOrder: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " padding: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v12, "StyleableListPopupMenu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getView : tv.getMeasuredWidth(): fFontSize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v12, "StyleableListPopupMenu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getView : tv.getMeasuredWidth(): fDensity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v12, "StyleableListPopupMenu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getView : tv.getMeasuredWidth(): fontSize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMaxWidth:I

    .line 234
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMaxWidth:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d05c8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    if-ge v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d05c8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    :goto_1
    return v12

    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMaxWidth:I

    goto :goto_1
.end method

.method protected removeInvisibleItems()V
    .locals 6

    .prologue
    .line 126
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v3

    .line 127
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v4, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    add-int/lit8 v3, v3, -0x1

    .line 127
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    new-array v4, v3, [Landroid/view/MenuItem;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenuItems:[Landroid/view/MenuItem;

    .line 134
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "cnt":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 135
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v4, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenuItems:[Landroid/view/MenuItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v5, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    aput-object v5, v4, v0

    move v0, v1

    .line 134
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    :cond_3
    return-void
.end method

.method public setContentWidth(I)V
    .locals 4
    .param p1, "width"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 176
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .local v1, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 178
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setWidth(I)V

    .line 182
    .end local v1    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setWidth(I)V

    goto :goto_0
.end method

.method public setLeftPopup(Z)V
    .locals 0
    .param p1, "left"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->isLeft:Z

    .line 119
    return-void
.end method

.method protected setListBackgroud()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mCtx:Landroid/content/Context;

    const v1, 0x7f020171

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mItemClickLstnr:Landroid/widget/AdapterView$OnItemClickListener;

    .line 162
    :cond_0
    return-void
.end method

.method public setRightPopup(Z)V
    .locals 0
    .param p1, "right"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->isRight:Z

    .line 123
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const-string v0, "StyleableListPopupMenu"

    const-string/jumbo v1, "show : Not able to show popup beacuse initilization failure. "

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 195
    const-string v0, "StyleableListPopupMenu"

    const-string/jumbo v1, "show : Not able to show popup without knowing anchor view"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method
