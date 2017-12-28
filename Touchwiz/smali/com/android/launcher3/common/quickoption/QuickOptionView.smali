.class public Lcom/android/launcher3/common/quickoption/QuickOptionView;
.super Landroid/widget/LinearLayout;
.source "QuickOptionView.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# static fields
.field private static final MAX_ITEM_SIZE_WITHOUT_SCROLL:I = 0x9

.field public static final STATE_REMOVED:I = 0x1

.field public static final STATE_SHOWING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QuickOptionListAdapter"


# instance fields
.field private mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

.field private mAnchor:Landroid/graphics/Rect;

.field private mArrow:Landroid/view/View;

.field private mHasDeepShortcut:Z

.field private mHasDrawn:Z

.field private mHideAnim:Landroid/animation/AnimatorSet;

.field private mIsAboveIcon:Z

.field private final mIsRtl:Z

.field private mIsSingleClick:Z

.field private mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLastTouchPos:Landroid/graphics/Point;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mQuickOptionListView:Landroid/widget/ListView;

.field private mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field private mShowAnim:Landroid/animation/AnimatorSet;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    .line 75
    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDeepShortcut:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDrawn:Z

    .line 77
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLastTouchPos:Landroid/graphics/Point;

    .line 117
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 81
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .line 83
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsRtl:Z

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsSingleClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher3/common/quickoption/QuickOptionView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsSingleClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/widget/ListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->performSingleItemClick(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher3/common/quickoption/QuickOptionView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDrawn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private addArrowView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 299
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a00d0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 300
    .local v4, "width":I
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a00cf

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 301
    .local v2, "height":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 303
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 304
    .local v1, "arrowView":Landroid/view/View;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    int-to-float v8, v4

    int-to-float v9, v2

    iget-boolean v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsAboveIcon:Z

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v8, v9, v5}, Lcom/android/launcher3/graphics/TriangleShape;->create(FFZ)Lcom/android/launcher3/graphics/TriangleShape;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 305
    .local v0, "arrowDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getElevation()F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setElevation(F)V

    .line 307
    iget-boolean v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsAboveIcon:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {p0, v1, v6, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 308
    return-object v1

    .end local v0    # "arrowDrawable":Landroid/graphics/drawable/ShapeDrawable;
    :cond_0
    move v5, v7

    .line 304
    goto :goto_0

    .restart local v0    # "arrowDrawable":Landroid/graphics/drawable/ShapeDrawable;
    :cond_1
    move v6, v7

    .line 307
    goto :goto_1
.end method

.method private addDeepShortcuts(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 10
    .param p3, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/QuickOptionListItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/QuickOptionListItem;>;"
    .local p2, "deepShortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v3

    .line 170
    .local v3, "manager":Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
    iget-object v7, p3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 171
    .local v7, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {p3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 172
    .local v0, "activity":Landroid/content/ComponentName;
    invoke-virtual {v3, v0, p2, v7}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v6

    .line 175
    .local v6, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    new-instance v4, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v4}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 176
    .local v4, "separator":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setType(I)V

    .line 177
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 180
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .line 181
    .local v5, "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    new-instance v2, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    .line 182
    .local v2, "item":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setType(I)V

    .line 183
    invoke-static {v5}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->fromInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setShortcutKey(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    .line 184
    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitle(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getShortcutIconDrawable(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v8, v9}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 186
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "item":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    .end local v5    # "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    :cond_0
    return-void
.end method

.method private animateHide(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 444
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 446
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    .line 449
    :cond_0
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 450
    .local v1, "scaleX":Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 451
    .local v2, "scaleY":Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 452
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    .line 453
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 454
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 455
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 482
    return-void
.end method

.method private animateShow()V
    .locals 8

    .prologue
    const v3, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 405
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleX(F)V

    .line 406
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleY(F)V

    .line 407
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setAlpha(F)V

    .line 409
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 410
    .local v1, "scaleX":Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 411
    .local v2, "scaleY":Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 412
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    .line 413
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 414
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x14d

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 415
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/util/ElasticEaseOut;

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v4, v6, v5}, Lcom/android/launcher3/util/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 416
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;

    invoke-direct {v4, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 435
    new-instance v3, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;

    invoke-direct {v3, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->post(Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method private beginDragging(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 496
    instance-of v0, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 499
    .local v8, "previewWithoutTray":Landroid/graphics/Bitmap;
    if-nez v8, :cond_0

    move v0, v1

    .line 518
    .end local v8    # "previewWithoutTray":Landroid/graphics/Bitmap;
    :goto_0
    return v0

    .line 503
    .restart local v8    # "previewWithoutTray":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v7

    .line 504
    .local v7, "iconSize":I
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    invoke-virtual {v0, v8, v7, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 505
    .local v2, "preview":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 506
    move-object v2, v8

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 510
    .local v6, "scale":F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 511
    .local v5, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLastTouchPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 512
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLastTouchPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/android/launcher3/util/BitmapUtils;->getIconBitmapSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 514
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v1, p1

    move-object v3, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->beginDragFromQuickOptionPopup(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;F)V

    .line 515
    const/4 v0, 0x1

    goto :goto_0

    .line 517
    .end local v2    # "preview":Landroid/graphics/Bitmap;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "scale":F
    .end local v7    # "iconSize":I
    .end local v8    # "previewWithoutTray":Landroid/graphics/Bitmap;
    :cond_2
    const-string v0, "QuickOptionListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected dragging view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 518
    goto :goto_0
.end method

.method private getEdgeMargin(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 10
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v4, 0x0

    .line 329
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 331
    .local v1, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 332
    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 333
    .local v2, "iconPadding":I
    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    .line 348
    .end local v2    # "iconPadding":I
    :cond_0
    :goto_0
    return v4

    .line 334
    :cond_1
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 335
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v8, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HotseatCellLayout;

    .line 336
    .local v0, "cl":Lcom/android/launcher3/home/HotseatCellLayout;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellWidth()I

    move-result v5

    iget-object v6, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 338
    .restart local v2    # "iconPadding":I
    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 339
    .local v3, "itemCount":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0

    .line 341
    .end local v0    # "cl":Lcom/android/launcher3/home/HotseatCellLayout;
    .end local v2    # "iconPadding":I
    .end local v3    # "itemCount":I
    :cond_2
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 342
    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 343
    .restart local v2    # "iconPadding":I
    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0

    .line 344
    .end local v2    # "iconPadding":I
    :cond_3
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 345
    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 346
    .restart local v2    # "iconPadding":I
    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0
.end method

.method private getPopupHeight()I
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 352
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    if-nez v9, :cond_1

    :cond_0
    move v7, v8

    .line 396
    :goto_0
    return v7

    .line 356
    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    .line 357
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 358
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 356
    invoke-virtual {v9, v10, v11}, Landroid/widget/ListView;->measure(II)V

    .line 362
    iget-boolean v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDeepShortcut:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v9}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 364
    .local v5, "optionsCount":I
    :goto_1
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00d8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 365
    .local v3, "listViewPadding":I
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v9

    add-int v10, v3, v3

    sub-int v1, v9, v10

    .line 366
    .local v1, "childHeight":I
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    .line 367
    .local v2, "dividerHeight":I
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a018a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 368
    .local v6, "separatorHeight":I
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 371
    .local v0, "arrowHeight":I
    const/16 v9, 0x9

    if-le v5, v9, :cond_3

    .line 374
    mul-int/lit8 v8, v1, 0x9

    add-int/2addr v8, v3

    mul-int/lit8 v9, v2, 0x9

    add-int/2addr v8, v9

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    add-int v9, v6, v2

    add-int/2addr v8, v9

    add-int/2addr v8, v0

    add-int v7, v8, v3

    .line 383
    .local v7, "total":I
    iget-object v8, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 384
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v11, v7, v0

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 362
    .end local v0    # "arrowHeight":I
    .end local v1    # "childHeight":I
    .end local v2    # "dividerHeight":I
    .end local v3    # "listViewPadding":I
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "optionsCount":I
    .end local v6    # "separatorHeight":I
    .end local v7    # "total":I
    :cond_2
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v9}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->getCount()I

    move-result v5

    goto :goto_1

    .line 386
    .restart local v0    # "arrowHeight":I
    .restart local v1    # "childHeight":I
    .restart local v2    # "dividerHeight":I
    .restart local v3    # "listViewPadding":I
    .restart local v5    # "optionsCount":I
    .restart local v6    # "separatorHeight":I
    :cond_3
    mul-int v9, v1, v5

    add-int/2addr v9, v3

    add-int/lit8 v10, v5, -0x1

    mul-int/2addr v10, v2

    add-int/2addr v9, v10

    iget-boolean v10, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDeepShortcut:Z

    if-eqz v10, :cond_4

    add-int v8, v6, v2

    :cond_4
    add-int/2addr v8, v9

    add-int/2addr v8, v0

    add-int v7, v8, v3

    .line 393
    .restart local v7    # "total":I
    iget-object v8, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 394
    .restart local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v11, v7, v0

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private getPopupWidth()I
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private needDarkBG()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    .line 314
    .local v0, "isItemInFolderOrApps":Z
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    :goto_1
    return v2

    .end local v0    # "isItemInFolderOrApps":Z
    :cond_1
    move v0, v1

    .line 312
    goto :goto_0

    .restart local v0    # "isItemInFolderOrApps":Z
    :cond_2
    move v2, v1

    .line 314
    goto :goto_1
.end method

.method private performKeyClick(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    const/4 v5, 0x1

    .line 588
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    .line 589
    .local v0, "item":Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 593
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 594
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 595
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertQOEventLog(ILcom/android/launcher3/Launcher;)V

    .line 596
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->isOptionRemove()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->createItemRemoveAnimation()Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    move-result-object v1

    .line 598
    .local v1, "itemRemoveAnimation":Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;
    if-eqz v1, :cond_1

    .line 599
    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/common/quickoption/QuickOptionView$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$6;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;Lcom/android/launcher3/common/quickoption/QuickOptionListItem;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 609
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;Z)V

    goto :goto_0

    .line 613
    .end local v1    # "itemRemoveAnimation":Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 618
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;Z)V

    goto :goto_0

    .line 616
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getShortcutKey()Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->startShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    goto :goto_1
.end method

.method private performSingleItemClick(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 158
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->performKeyClick(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setBG()V
    .locals 4

    .prologue
    const v3, 0x3f733333    # 0.95f

    .line 318
    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->needDarkBG()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e002c

    .line 319
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 322
    .local v0, "bgColor":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 323
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAlpha(F)V

    .line 324
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 325
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 326
    return-void

    .line 319
    .end local v0    # "bgColor":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e002b

    .line 320
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private shiftPopup()V
    .locals 15

    .prologue
    const/high16 v14, 0x40000000    # 2.0f

    .line 242
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/view/DragLayer;->getWidth()I

    move-result v10

    .line 243
    .local v10, "screenWidth":I
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/view/DragLayer;->getHeight()I

    move-result v9

    .line 244
    .local v9, "screenHeight":I
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0188

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 245
    .local v2, "containerPadding":I
    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getPopupWidth()I

    move-result v8

    .line 246
    .local v8, "popupWidth":I
    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getPopupHeight()I

    move-result v6

    .line 247
    .local v6, "popupHeight":I
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getEdgeMargin(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v5

    .line 248
    .local v5, "popupEdgeMargin":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v12, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v12, :cond_2

    const v12, 0x7f0a004b

    :goto_0
    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 250
    .local v7, "popupTopMargin":I
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00c2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 251
    .local v11, "statusBarHeight":I
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00d0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 254
    .local v1, "arrowWidth":I
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    int-to-float v13, v8

    div-float/2addr v13, v14

    sub-float v3, v12, v13

    .line 255
    .local v3, "dx":F
    int-to-float v12, v5

    cmpg-float v12, v3, v12

    if-gez v12, :cond_3

    .line 256
    int-to-float v3, v5

    .line 257
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    int-to-float v13, v5

    sub-float/2addr v12, v13

    invoke-virtual {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotX(F)V

    .line 266
    :goto_1
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v6

    sub-int/2addr v12, v7

    int-to-float v4, v12

    .line 267
    .local v4, "dy":F
    int-to-float v12, v11

    cmpl-float v12, v4, v12

    if-lez v12, :cond_5

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsAboveIcon:Z

    .line 268
    iget-boolean v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsAboveIcon:Z

    if-nez v12, :cond_6

    .line 269
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v7

    int-to-float v4, v12

    .line 270
    int-to-float v12, v6

    add-float/2addr v12, v4

    int-to-float v13, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_0

    .line 271
    sub-int v12, v9, v6

    sub-int/2addr v12, v7

    int-to-float v4, v12

    .line 273
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotY(F)V

    .line 279
    :goto_3
    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->addArrowView()Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/view/View;

    .line 280
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float/2addr v12, v3

    int-to-float v13, v1

    div-float/2addr v13, v14

    sub-float v0, v12, v13

    .line 281
    .local v0, "arrowDx":F
    iget-boolean v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsRtl:Z

    if-eqz v12, :cond_1

    .line 282
    sub-int v12, v8, v1

    int-to-float v12, v12

    sub-float/2addr v0, v12

    .line 284
    :cond_1
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/view/View;

    invoke-virtual {v12, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 287
    iget-boolean v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsRtl:Z

    if-eqz v12, :cond_7

    .line 288
    sub-int v12, v10, v8

    sub-int/2addr v12, v2

    int-to-float v12, v12

    sub-float/2addr v3, v12

    .line 292
    :goto_4
    int-to-float v12, v2

    sub-float/2addr v4, v12

    .line 294
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setX(F)V

    .line 295
    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setY(F)V

    .line 296
    return-void

    .line 248
    .end local v0    # "arrowDx":F
    .end local v1    # "arrowWidth":I
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v7    # "popupTopMargin":I
    .end local v11    # "statusBarHeight":I
    :cond_2
    const v12, 0x7f0a00d1

    goto/16 :goto_0

    .line 258
    .restart local v1    # "arrowWidth":I
    .restart local v3    # "dx":F
    .restart local v7    # "popupTopMargin":I
    .restart local v11    # "statusBarHeight":I
    :cond_3
    int-to-float v12, v8

    add-float/2addr v12, v3

    sub-int v13, v10, v5

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 259
    sub-int v12, v10, v8

    sub-int/2addr v12, v5

    int-to-float v3, v12

    .line 260
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int v12, v10, v12

    sub-int/2addr v12, v5

    sub-int v12, v8, v12

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-virtual {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotX(F)V

    goto/16 :goto_1

    .line 262
    :cond_4
    int-to-float v12, v8

    div-float/2addr v12, v14

    invoke-virtual {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotX(F)V

    goto/16 :goto_1

    .line 267
    .restart local v4    # "dy":F
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 275
    :cond_6
    int-to-float v12, v6

    invoke-virtual {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotY(F)V

    goto :goto_3

    .line 290
    .restart local v0    # "arrowDx":F
    :cond_7
    int-to-float v12, v2

    sub-float/2addr v3, v12

    goto :goto_4
.end method


# virtual methods
.method public enable()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 192
    return-void
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x6

    return v0
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-object v0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    return v0
.end method

.method public onDragEnd()Z
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 580
    const/4 v0, 0x1

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    .line 546
    return-void
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p2, "succeedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .local p3, "failedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 530
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 527
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onItemLongClick(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Z
    .locals 3
    .param p1, "shortcut"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .prologue
    .line 489
    new-instance v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, p1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 490
    .local v0, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    new-instance v1, Lcom/android/launcher3/common/view/IconView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;)V

    .line 491
    .local v1, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/view/IconView;->setTag(Ljava/lang/Object;)V

    .line 492
    invoke-direct {p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->beginDragging(Landroid/view/View;)Z

    move-result v2

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDrawn:Z

    if-nez v0, :cond_0

    .line 536
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 538
    :cond_0
    return-void
.end method

.method public remove(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v3, 0x1

    .line 199
    iget v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    if-ne v2, v3, :cond_0

    .line 228
    :goto_0
    return-void

    .line 202
    :cond_0
    iput v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    .line 204
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->clearItemBounceAnimation()V

    .line 209
    if-eqz p1, :cond_3

    .line 210
    move-object v1, p0

    .line 211
    .local v1, "view":Lcom/android/launcher3/common/quickoption/QuickOptionView;
    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$2;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView$2;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    .line 220
    .local v0, "onAnimateEndRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->animateHide(Ljava/lang/Runnable;)V

    .line 227
    .end local v0    # "onAnimateEndRunnable":Ljava/lang/Runnable;
    .end local v1    # "view":Lcom/android/launcher3/common/quickoption/QuickOptionView;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_0

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/view/DragLayer;->removeViewInLayout(Landroid/view/View;)V

    .line 223
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/drag/DragManager;->removeDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    goto :goto_1
.end method

.method public show(Lcom/android/launcher3/common/drag/DropTarget$DragObject;ILjava/util/List;)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "optionFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "deepShortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 87
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    if-eqz v1, :cond_1

    .line 88
    iput v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    .line 90
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 91
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getAnchorRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    .line 93
    const v1, 0x7f1100eb

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    .line 94
    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    .line 96
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptions(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/QuickOptionListItem;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0, v0, p3, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->addDeepShortcuts(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDeepShortcut:Z

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->setItems(Ljava/util/List;)V

    .line 103
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 106
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 107
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 108
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    .line 109
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    .line 111
    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->shiftPopup()V

    .line 112
    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setBG()V

    .line 113
    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->animateShow()V

    .line 115
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/QuickOptionListItem;>;"
    :cond_1
    return-void
.end method
