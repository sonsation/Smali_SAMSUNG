.class public Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
.super Landroid/widget/RelativeLayout;
.source "RequestSpinnerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;
    }
.end annotation


# static fields
.field private static final ANIM_SPEED:I = 0x32

.field private static final LOG_TAG:Ljava/lang/String; = "RequestSpinnerView"

.field private static final MSG_UPDATE:I


# instance fields
.field private artistName:Ljava/lang/String;

.field private dialog:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurrentStationCursorIndex:I

.field private mFakeView:Landroid/widget/LinearLayout;

.field private mListener:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;

.field private mScale:F

.field private mSelectedStationId:Ljava/lang/String;

.field private mSelectedStationType:Ljava/lang/String;

.field private mSpinnerAdListener:Landroid/view/View$OnClickListener;

.field private mSpinnerClickListener:Landroid/view/View$OnClickListener;

.field private mSpinnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStationCursorToSpinnerIndexMap:Landroid/util/SparseIntArray;

.field private mStationTextSize:F

.field private mStationsCursor:Landroid/database/Cursor;

.field private mStationsSpinnerLstnr:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

.field private mTextRightPaddiingSize:F

.field private mTitleTextSize:F

.field private mTouchDown:Z

.field private mTouchDownAnim:Landroid/animation/ValueAnimator;

.field private mTouchUpAnim:Landroid/animation/ValueAnimator;

.field private mUIThreadHandler:Landroid/os/Handler;

.field private songTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mCurrentStationCursorIndex:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDown:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->songTitle:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->artistName:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$1;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerClickListener:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$2;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerAdListener:Landroid/view/View$OnClickListener;

    .line 130
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mActivity:Landroid/app/Activity;

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    .line 132
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->initialize()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dialog:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSelectedStationType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
    .param p1, "x1"    # Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dialog:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationTextSize:F

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTitleTextSize:F

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mCurrentStationCursorIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mCurrentStationCursorIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsSpinnerLstnr:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->initSpinnerList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setFakeView(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSelectedStationId:Ljava/lang/String;

    return-object p1
.end method

.method private getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method private getSongTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->songTitle:Ljava/lang/String;

    return-object v0
.end method

.method private initSpinnerList(Landroid/database/Cursor;)V
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 182
    const/4 v6, 0x0

    .line 184
    .local v6, "spinnerIndex":I
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_8

    .line 185
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerList:Ljava/util/ArrayList;

    if-nez v9, :cond_9

    .line 186
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerList:Ljava/util/ArrayList;

    .line 191
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationCursorToSpinnerIndexMap:Landroid/util/SparseIntArray;

    if-nez v9, :cond_a

    .line 192
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationCursorToSpinnerIndexMap:Landroid/util/SparseIntArray;

    .line 198
    :goto_1
    const/4 v5, 0x0

    .line 199
    .local v5, "preGenre":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 201
    :cond_0
    const-string v9, "is_mystation"

    .line 202
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 204
    .local v4, "mystation":I
    if-ne v4, v10, :cond_b

    .line 205
    new-instance v2, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;

    invoke-direct {v2}, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;-><init>()V

    .line 208
    .local v2, "item1":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0a0361

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    .line 210
    iput v11, v2, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->type:I

    .line 212
    add-int/lit8 v6, v6, 0x1

    .line 213
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v5, v2, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    .line 220
    .end local v2    # "item1":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    .end local v4    # "mystation":I
    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 222
    .local v0, "exist_mystation":Z
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 224
    :cond_2
    const-string v9, "is_mystation"

    .line 225
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 227
    .restart local v4    # "mystation":I
    if-ne v4, v10, :cond_3

    .line 228
    new-instance v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;-><init>()V

    .line 230
    .local v1, "item":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setItemData(Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;Landroid/database/Cursor;)V

    .line 232
    iput-boolean v10, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->isMyStation:Z

    .line 233
    const-string/jumbo v9, "station_is_hidden"

    .line 234
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 233
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v10, v9, :cond_c

    move v9, v10

    :goto_3
    iput-boolean v9, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->isHiddenStation:Z

    .line 235
    const/4 v0, 0x1

    .line 237
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationCursorToSpinnerIndexMap:Landroid/util/SparseIntArray;

    iget v12, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->cursorIndex:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "spinnerIndex":I
    .local v7, "spinnerIndex":I
    invoke-virtual {v9, v12, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v7

    .line 241
    .end local v1    # "item":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    .end local v7    # "spinnerIndex":I
    .restart local v6    # "spinnerIndex":I
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 243
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 245
    :cond_4
    const-string v9, "is_mystation"

    .line 246
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 248
    const-string/jumbo v9, "station_type"

    .line 249
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, "stationType":Ljava/lang/String;
    if-eq v4, v10, :cond_7

    const-string/jumbo v9, "station_is_hidden"

    .line 252
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 251
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eq v10, v9, :cond_7

    .line 253
    new-instance v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;-><init>()V

    .line 255
    .restart local v1    # "item":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    const-string v9, "genre_name"

    .line 256
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    .line 258
    iget-object v9, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    const-string v12, "PERSONAL"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v5, :cond_5

    iget-object v9, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    .line 259
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 260
    :cond_5
    iget-object v5, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    .line 261
    new-instance v3, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;

    invoke-direct {v3}, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;-><init>()V

    .line 263
    .local v3, "itemHeader":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    iget-object v9, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    iput-object v9, v3, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->genreName:Ljava/lang/String;

    .line 265
    iput v11, v3, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->type:I

    .line 267
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationCursorToSpinnerIndexMap:Landroid/util/SparseIntArray;

    iget v12, v3, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->cursorIndex:I

    add-int/lit8 v7, v6, 0x1

    .line 268
    .end local v6    # "spinnerIndex":I
    .restart local v7    # "spinnerIndex":I
    invoke-virtual {v9, v12, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v7

    .line 272
    .end local v3    # "itemHeader":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    .end local v7    # "spinnerIndex":I
    .restart local v6    # "spinnerIndex":I
    :cond_6
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setItemData(Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;Landroid/database/Cursor;)V

    .line 273
    iput-boolean v11, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->isMyStation:Z

    .line 275
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationCursorToSpinnerIndexMap:Landroid/util/SparseIntArray;

    iget v12, v1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->cursorIndex:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "spinnerIndex":I
    .restart local v7    # "spinnerIndex":I
    invoke-virtual {v9, v12, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 276
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v7

    .line 278
    .end local v1    # "item":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    .end local v7    # "spinnerIndex":I
    .restart local v6    # "spinnerIndex":I
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 281
    .end local v0    # "exist_mystation":Z
    .end local v4    # "mystation":I
    .end local v5    # "preGenre":Ljava/lang/String;
    .end local v8    # "stationType":Ljava/lang/String;
    :cond_8
    return-void

    .line 188
    :cond_9
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 195
    :cond_a
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationCursorToSpinnerIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    goto/16 :goto_1

    .line 217
    .restart local v4    # "mystation":I
    .restart local v5    # "preGenre":Ljava/lang/String;
    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_2

    .restart local v0    # "exist_mystation":Z
    .restart local v1    # "item":Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    :cond_c
    move v9, v11

    .line 233
    goto/16 :goto_3
.end method

.method private initView(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 138
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->setAppStyleToInflate(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 139
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04011c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1, v4, v4}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->addView(Landroid/view/View;II)V

    .line 142
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d05f3

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationTextSize:F

    .line 144
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01da

    .line 145
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTitleTextSize:F

    .line 147
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$3;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mUIThreadHandler:Landroid/os/Handler;

    .line 161
    const v2, 0x7f120362

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    .line 163
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mScale:F

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setupListener()V

    .line 166
    return-void
.end method

.method private setArtistName(I)V
    .locals 3
    .param p1, "stationCursorIndex"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mCurrentStationCursorIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "track_artist_name"

    .line 390
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->artistName:Ljava/lang/String;

    .line 392
    :cond_0
    return-void
.end method

.method private setFakeView(I)V
    .locals 6
    .param p1, "stationCursorIndex"    # I

    .prologue
    .line 421
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 422
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    const v4, 0x7f120324

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 428
    .local v2, "stationTxt":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    if-nez v3, :cond_2

    .line 456
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v5, "station_station_name"

    .line 435
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 434
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    const-string v5, "genre_name"

    .line 437
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "genre":Ljava/lang/String;
    const-string v3, "RequestSpinnerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFakeView : stationCursorIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", genre: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", station name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    if-eqz v1, :cond_3

    .line 444
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 449
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a033f

    .line 451
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 450
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    .line 451
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    .line 452
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0332

    .line 453
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    .line 454
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 446
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method private setItemData(Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 169
    const-string/jumbo v0, "station_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationType:Ljava/lang/String;

    .line 171
    const-string/jumbo v0, "station_station_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->name:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, "station_ordinal"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->ordinal:I

    .line 174
    const-string/jumbo v0, "station_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationId:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "station_track_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->trackId:Ljava/lang/String;

    .line 176
    const-string/jumbo v0, "station_tag"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->stationTag:I

    .line 177
    const/4 v0, 0x2

    iput v0, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->type:I

    .line 178
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/app/music/common/model/milkradio/DropDownItem;->cursorIndex:I

    .line 179
    return-void
.end method

.method private setSongTitle(I)V
    .locals 3
    .param p1, "stationCursorIndex"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mCurrentStationCursorIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "track_track_title"

    .line 379
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->songTitle:Ljava/lang/String;

    .line 381
    :cond_0
    return-void
.end method

.method private setupListener()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$4;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsSpinnerLstnr:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    return-void
.end method


# virtual methods
.method public callClick()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "RequestSpinnerView"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dialog:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    .line 623
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dialog:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsSpinnerLstnr:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->setListener(Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog$OnItemClickListener;)V

    .line 624
    return-void
.end method

.method public dismissSpinner()V
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dialog:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->dismissAllowingStateLoss()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dialog:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    .line 325
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dialog:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dialog:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dialog:Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/SpinnerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mUIThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public resetCursor()V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    .line 481
    return-void
.end method

.method public setCursor(ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 459
    if-nez p2, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->resetCursor()V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->initView(I)V

    .line 466
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    .line 468
    const v1, 0x7f120026

    if-ne p1, v1, :cond_0

    .line 469
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, "message":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 471
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setEnableSpinner(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSpinnerAdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setLyricsLabelbyTrackId(I)V
    .locals 4
    .param p1, "stationCursorIndex"    # I

    .prologue
    .line 403
    const-string v0, ""

    .line 405
    .local v0, "trackId":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v3, "station_track_id"

    .line 407
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setSongTitle(I)V

    .line 411
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setArtistName(I)V

    .line 413
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 414
    const-string v1, "RequestSpinnerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStationSongArtistLabels : setStationSongArtistLabels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v1, "RequestSpinnerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStationSongArtistLabels : trackId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public setMarginForJustForYou(Z)V
    .locals 4
    .param p1, "justForYouVisible"    # Z

    .prologue
    .line 604
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    .line 606
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 607
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0397

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    .line 610
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d05e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 616
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mFakeView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void

    .line 613
    .restart local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02c8

    .line 614
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method public setSpinnerInfo(I)V
    .locals 5
    .param p1, "stationCursorIndex"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mCurrentStationCursorIndex:I

    .line 346
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 370
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 351
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "station_id"

    .line 352
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "stationId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "station_type"

    .line 354
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSelectedStationId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSelectedStationId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSelectedStationType:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSelectedStationType:Ljava/lang/String;

    .line 357
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 358
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.prefetch.manager.prefetch_delayed"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dismissSpinner()V

    .line 363
    :cond_3
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSelectedStationId:Ljava/lang/String;

    .line 364
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mSelectedStationType:Ljava/lang/String;

    .line 367
    .end local v0    # "stationId":Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setFakeView(I)V

    .line 369
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setLyricsLabelbyTrackId(I)V

    goto :goto_0
.end method

.method public touchDown()V
    .locals 4

    .prologue
    .line 484
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 485
    const-string v0, "RequestSpinnerView"

    const-string/jumbo v1, "touchDown : Animation Performance is so low that it can not be executed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDown:Z

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDown:Z

    .line 493
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 501
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    .line 504
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 503
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 506
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$5;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$6;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 539
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 501
    nop

    :array_0
    .array-data 4
        0x1
        0x32
    .end array-data
.end method

.method public touchUp()V
    .locals 4

    .prologue
    .line 544
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 545
    const-string v0, "RequestSpinnerView"

    const-string/jumbo v1, "touchUp : Animation Performance is so low that it can not be executed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDown:Z

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDown:Z

    .line 553
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchDownAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 561
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    .line 562
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 563
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    .line 564
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 563
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 566
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$7;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 585
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$8;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 599
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->mTouchUpAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 561
    nop

    :array_0
    .array-data 4
        0x1
        0x32
    .end array-data
.end method
