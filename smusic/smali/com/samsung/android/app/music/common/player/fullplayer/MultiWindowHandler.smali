.class public final Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;
.super Ljava/lang/Object;
.source "MultiWindowHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler$Visibility;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private mControlViewMinWidth:I

.field private final mFragment:Landroid/app/Fragment;

.field private final mIsSmallScreenUiActivated:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShuffleRepeatButtonWidth:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/view/View;Z)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isSmallScreenUiActivated"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->TAG:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mFragment:Landroid/app/Fragment;

    .line 47
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mActivity:Landroid/app/Activity;

    .line 48
    invoke-virtual {p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mResources:Landroid/content/res/Resources;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    .line 50
    iput-boolean p3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mIsSmallScreenUiActivated:Z

    .line 51
    return-void
.end method

.method private getDimensionPixel(I)I
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method private getViewVisibilityByMinHeight(ILandroid/view/View;)I
    .locals 2
    .param p1, "minHeight"    # I
    .param p2, "v"    # Landroid/view/View;
    .annotation build Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler$Visibility;
    .end annotation

    .prologue
    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 195
    .local v0, "rectInfo":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 196
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private getViewVisibilityByPosition(ILandroid/view/View;)I
    .locals 4
    .param p1, "topSystemUiHeight"    # I
    .param p2, "v"    # Landroid/view/View;
    .annotation build Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler$Visibility;
    .end annotation

    .prologue
    .line 178
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 179
    .local v0, "location":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "paddingTop":I
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 183
    .local v2, "parent":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 186
    :cond_0
    const/4 v3, 0x1

    aget v3, v0, v3

    sub-int/2addr v3, v1

    if-le v3, p1, :cond_1

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x4

    goto :goto_0
.end method

.method private safeGetWidth(I)I
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private safeSetVisibility(II)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "visibility"    # I
        .annotation build Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler$Visibility;
        .end annotation
    .end param

    .prologue
    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_0
    return-void
.end method

.method private safeSetWidth(II)V
    .locals 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "width"    # I

    .prologue
    .line 155
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 156
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 158
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private updateControlViewMinWidth()V
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mControlViewMinWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mShuffleRepeatButtonWidth:I

    if-lez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    const v0, 0x7f0d0016

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->getDimensionPixel(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mShuffleRepeatButtonWidth:I

    .line 204
    const v0, 0x7f0d0111

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->getDimensionPixel(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mShuffleRepeatButtonWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mControlViewMinWidth:I

    goto :goto_0
.end method


# virtual methods
.method public adjustPlayerLayout(Z)V
    .locals 17
    .param p1, "forceShowAll"    # Z

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v14}, Landroid/app/Fragment;->isAdded()Z

    move-result v14

    if-nez v14, :cond_1

    .line 59
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "adjustPlayerLayout() - fragment was not Added forceShowAll : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "adjustPlayerLayout() - forceShowAll : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mIsSmallScreenUiActivated:Z

    if-nez v14, :cond_a

    .line 66
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    const v15, 0x7f1201d8

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 67
    .local v4, "controlView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->updateControlViewMinWidth()V

    .line 72
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mControlViewMinWidth:I

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int v3, v14, v15

    .line 73
    .local v3, "conflictWidth":I
    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mShuffleRepeatButtonWidth:I

    div-int/lit8 v15, v3, 0x2

    sub-int v13, v14, v15

    .line 75
    .local v13, "width":I
    :goto_1
    const v14, 0x7f1201db

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeGetWidth(I)I

    move-result v14

    if-ge v13, v14, :cond_8

    .line 76
    const v14, 0x7f1201da

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetVisibility(II)V

    .line 81
    :goto_2
    const v14, 0x7f1201dd

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeGetWidth(I)I

    move-result v14

    if-ge v13, v14, :cond_9

    .line 82
    const v14, 0x7f1201dc

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetVisibility(II)V

    .line 105
    .end local v3    # "conflictWidth":I
    .end local v13    # "width":I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v14}, Lcom/samsung/android/app/music/common/util/UiUtils;->getTopSystemUiHeight(Landroid/app/Activity;)I

    move-result v10

    .line 108
    .local v10, "topSystemUiHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    const v15, 0x7f1201f9

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 109
    .local v11, "uhqView":Landroid/view/View;
    if-eqz v11, :cond_3

    .line 110
    if-eqz p1, :cond_d

    const/4 v12, 0x0

    .line 112
    .local v12, "visibility":I
    :goto_4
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .end local v12    # "visibility":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    const v15, 0x7f1201ed

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "albumView":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 117
    if-eqz p1, :cond_e

    const/4 v12, 0x0

    .line 119
    .restart local v12    # "visibility":I
    :goto_5
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .end local v12    # "visibility":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    const v15, 0x7f1201ee

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 123
    .local v9, "titleView":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 124
    if-eqz p1, :cond_f

    const/4 v12, 0x0

    .line 126
    .restart local v12    # "visibility":I
    :goto_6
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .end local v12    # "visibility":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    const v15, 0x7f1201ef

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 130
    .local v6, "optionView":Landroid/view/View;
    if-eqz v6, :cond_6

    .line 131
    if-eqz p1, :cond_10

    const/4 v12, 0x0

    .line 133
    .restart local v12    # "visibility":I
    :goto_7
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .end local v12    # "visibility":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    const v15, 0x7f1201f4

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 137
    .local v8, "seekBar":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 138
    if-eqz p1, :cond_11

    const/4 v12, 0x0

    .line 140
    .restart local v12    # "visibility":I
    :goto_8
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 142
    const v14, 0x7f1201f5

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetVisibility(II)V

    .line 143
    const v14, 0x7f1201f6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetVisibility(II)V

    goto/16 :goto_0

    .line 73
    .end local v1    # "albumView":Landroid/view/View;
    .end local v6    # "optionView":Landroid/view/View;
    .end local v8    # "seekBar":Landroid/view/View;
    .end local v9    # "titleView":Landroid/view/View;
    .end local v10    # "topSystemUiHeight":I
    .end local v11    # "uhqView":Landroid/view/View;
    .end local v12    # "visibility":I
    .restart local v3    # "conflictWidth":I
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mShuffleRepeatButtonWidth:I

    goto/16 :goto_1

    .line 78
    .restart local v13    # "width":I
    :cond_8
    const v14, 0x7f1201da

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetVisibility(II)V

    .line 79
    const v14, 0x7f1201da

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetWidth(II)V

    goto/16 :goto_2

    .line 84
    :cond_9
    const v14, 0x7f1201dc

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetVisibility(II)V

    .line 85
    const v14, 0x7f1201dc

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetWidth(II)V

    goto/16 :goto_3

    .line 88
    .end local v3    # "conflictWidth":I
    .end local v4    # "controlView":Landroid/view/View;
    .end local v13    # "width":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->mView:Landroid/view/View;

    const v15, 0x7f12000a

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 89
    .restart local v4    # "controlView":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 90
    const v14, 0x7f0d013b

    .line 91
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->getDimensionPixel(I)I

    move-result v5

    .line 92
    .local v5, "minWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v14

    if-le v14, v5, :cond_b

    const/4 v12, 0x0

    .line 93
    .restart local v12    # "visibility":I
    :goto_9
    const v14, 0x7f1201da

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetVisibility(II)V

    .line 94
    const v14, 0x7f1201dc

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetVisibility(II)V

    .line 96
    const v14, 0x7f0d0011

    .line 97
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->getDimensionPixel(I)I

    move-result v7

    .line 99
    .local v7, "rightLayoutWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v14

    if-ge v14, v7, :cond_c

    const/4 v2, 0x4

    .line 100
    .local v2, "albumViewVisibility":I
    :goto_a
    const v14, 0x7f1201ed

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetVisibility(II)V

    .line 101
    const v14, 0x7f1201ee

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->safeSetVisibility(II)V

    goto/16 :goto_3

    .line 92
    .end local v2    # "albumViewVisibility":I
    .end local v7    # "rightLayoutWidth":I
    .end local v12    # "visibility":I
    :cond_b
    const/16 v12, 0x8

    goto :goto_9

    .line 99
    .restart local v7    # "rightLayoutWidth":I
    .restart local v12    # "visibility":I
    :cond_c
    const/4 v2, 0x0

    goto :goto_a

    .line 111
    .end local v5    # "minWidth":I
    .end local v7    # "rightLayoutWidth":I
    .end local v12    # "visibility":I
    .restart local v10    # "topSystemUiHeight":I
    .restart local v11    # "uhqView":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->getViewVisibilityByPosition(ILandroid/view/View;)I

    move-result v12

    goto/16 :goto_4

    .line 118
    .restart local v1    # "albumView":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->getViewVisibilityByMinHeight(ILandroid/view/View;)I

    move-result v12

    goto/16 :goto_5

    .line 125
    .restart local v9    # "titleView":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->getViewVisibilityByPosition(ILandroid/view/View;)I

    move-result v12

    goto/16 :goto_6

    .line 132
    .restart local v6    # "optionView":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->getViewVisibilityByPosition(ILandroid/view/View;)I

    move-result v12

    goto/16 :goto_7

    .line 139
    .restart local v8    # "seekBar":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->getViewVisibilityByPosition(ILandroid/view/View;)I

    move-result v12

    goto/16 :goto_8
.end method
