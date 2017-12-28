.class public Lcom/android/launcher3/folder/view/FolderView;
.super Landroid/widget/FrameLayout;
.source "FolderView.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/folder/FolderEventListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;,
        Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;,
        Lcom/android/launcher3/folder/view/FolderView$DropItem;,
        Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final FOLDER_NAME_BAR_COLOR_ALPHA_MASK:I = 0x4dffffff

.field private static final FOLDER_NAME_HINT_COLOR_ALPHA_MASK:I = -0x70000001

.field private static final ICON_OVERSCROLL_WIDTH_FACTOR:F = 0.45f

.field private static final ICON_PRESS_ALPHA_VALUE:F = 0.5f

.field private static final IMPROVE_COLOR_PICKER_DENSITY_THRESHOLD:I = 0x140

.field private static final MIN_CONTENT_DIMEN:I = 0x5

.field private static final ON_EXIT_CLOSE_DELAY:I = 0x190

.field private static final REORDER_DELAY:I = 0xfa

.field public static final SCROLL_HINT_DURATION:I = 0x1f4

.field static final STATE_ANIMATING:I = 0x1

.field static final STATE_NONE:I = -0x1

.field static final STATE_OPEN:I = 0x2

.field static final STATE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FolderView"

.field private static sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

.field private static sColorPickerImages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sOptionButtonImage:Landroid/graphics/Bitmap;


# instance fields
.field private mAddButton:Landroid/view/View;

.field private mAscComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private mBorder:Landroid/widget/ImageView;

.field private mBorderHeight:I

.field private mBorderMargin:I

.field private mBorderWidth:I

.field private mColorPickerItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/folder/view/FolderView$FolderColor;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mColorPickerView:Landroid/view/View;

.field private mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

.field private mContentContainer:Landroid/view/View;

.field private mContentMinHeight:I

.field private mContentMinMargin:I

.field private mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

.field private mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field private mCurrentDragView:Landroid/view/View;

.field private mCurrentScrollDir:I

.field private mDeleteFolderOnDropCompleted:Z

.field private mDescComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mDragInProgress:Z

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mEmptyCellRank:I

.field private mFadeInOutDuration:I

.field private mFolderColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/folder/view/FolderView$FolderColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderContainer:Landroid/view/View;

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

.field private mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

.field private mFolderOptionButton:Landroid/widget/ImageView;

.field private mFooter:Landroid/view/View;

.field private mFooterHeight:I

.field private mHeader:Landroid/view/View;

.field private mHeaderBottomLine:Landroid/view/View;

.field private mHeaderHeight:I

.field private mHoverPointClosesFolder:Z

.field private mInfo:Lcom/android/launcher3/folder/FolderInfo;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field private final mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsInvalidated:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mNeedToShowCursor:Z

.field private final mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private final mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mOuterAddButtonContainer:Landroid/view/View;

.field private mOuterAddButtonContainerHeight:I

.field private mOuterAddButtonContainerMargin:I

.field private mPageSpacingOnDrag:I

.field private mPrevTargetRank:I

.field private mRearrangeOnClose:Z

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mRestorePositionOnDrop:Z

.field private mScrollAreaOffset:I

.field private mScrollHintDir:I

.field private final mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mSuppressFolderClose:Z

.field private mSuppressFolderDeletion:Z

.field private mSuppressOnAdd:Z

.field private mSuppressOnRemove:Z

.field private mTargetRank:I

.field private mTargetRankForRestore:I

.field private mViewState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 288
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 168
    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 169
    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 170
    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 218
    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    .line 219
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    .line 220
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 224
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    .line 225
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 226
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    .line 227
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    .line 228
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    .line 229
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    .line 230
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    .line 231
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    .line 239
    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    .line 240
    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    .line 244
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    .line 246
    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    .line 250
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$1;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAscComparator:Ljava/util/Comparator;

    .line 265
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$2;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDescComparator:Ljava/util/Comparator;

    .line 1623
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$17;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$17;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 1659
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$18;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$18;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 289
    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/view/FolderView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 295
    .local v1, "res":Landroid/content/res/Resources;
    sget-object v2, Lcom/android/launcher3/folder/view/FolderView;->sDefaultFolderName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 296
    const v2, 0x7f09019a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/folder/view/FolderView;->sDefaultFolderName:Ljava/lang/String;

    .line 299
    :cond_0
    sget-object v2, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 300
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    .line 303
    :cond_1
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 309
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    .line 310
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v0

    .line 311
    .local v0, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    if-eqz v0, :cond_2

    .line 312
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 322
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    .line 323
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/view/FolderView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .param p2, "x2"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher3/folder/view/FolderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher3/folder/view/FolderView;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/common/base/controller/ControllerBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/folder/view/FolderView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/util/alarm/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "x2"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/view/FolderView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/folder/view/FolderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/folder/view/FolderView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->doneEditingFolderName(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/View;)Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getFolderColorByView(Landroid/view/View;)Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v0

    return-object v0
.end method

.method private animateAppear(Landroid/view/View;)V
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2563
    if-eqz p1, :cond_3

    .line 2564
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2565
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/folder/view/FolderView;->setSuppressFolderNameFocus(J)V

    .line 2569
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2570
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f050000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2571
    .local v0, "ani":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2572
    .local v1, "colorView":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->appearColorPickerItems(Landroid/view/View;)V

    goto :goto_0

    .line 2575
    .end local v0    # "ani":Landroid/view/animation/Animation;
    .end local v1    # "colorView":Landroid/widget/ImageView;
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2576
    .restart local v0    # "ani":Landroid/view/animation/Animation;
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2579
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2580
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2582
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_3
    return-void

    :cond_4
    move v2, v3

    .line 2575
    goto :goto_1
.end method

.method private animateDismiss(Landroid/view/View;Z)V
    .locals 4
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "keepLayout"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2592
    if-eqz p1, :cond_2

    .line 2594
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2595
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2596
    .local v0, "ani":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2597
    .local v1, "colorView":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->dismissColorPickerItems(Landroid/view/View;)V

    goto :goto_0

    .line 2600
    .end local v0    # "ani":Landroid/view/animation/Animation;
    .end local v1    # "colorView":Landroid/widget/ImageView;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2601
    .restart local v0    # "ani":Landroid/view/animation/Animation;
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2604
    :cond_1
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$23;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView$23;-><init>(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/View;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2621
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2623
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 2600
    goto :goto_1
.end method

.method private appearColorPickerItems(Landroid/view/View;)V
    .locals 3
    .param p1, "colorView"    # Landroid/view/View;

    .prologue
    .line 2585
    if-eqz p1, :cond_0

    .line 2586
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2587
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2589
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private beginDrag(Landroid/view/View;Z)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowQuickOption"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 719
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 720
    .local v1, "tag":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 721
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 722
    .local v0, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 746
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_0
    return v2

    .line 726
    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 727
    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    .line 728
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    .line 729
    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRankForRestore:I

    .line 730
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    .line 732
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    .line 733
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, p1, p0, p2, v2}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    .line 735
    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    .line 736
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 737
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 738
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    .line 739
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    .line 742
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v2, :cond_2

    .line 743
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/controller/FolderController;->enterDragState(Z)V

    :cond_2
    move v2, v3

    .line 746
    goto :goto_0
.end method

.method private calculateBorderWidth()I
    .locals 3

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private calculateFolderHeight()I
    .locals 1

    .prologue
    .line 2042
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight(I)I

    move-result v0

    return v0
.end method

.method private calculateFolderHeight(I)I
    .locals 2
    .param p1, "contentAreaHeight"    # I

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateFolderWidth()I
    .locals 3

    .prologue
    .line 2032
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2033
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 2034
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 2038
    .local v1, "folderWidth":I
    return v1
.end method

.method private centerAboutIcon()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1977
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1978
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1981
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .line 1982
    .local v6, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderWidth()I

    move-result v9

    .line 1983
    .local v9, "width":I
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight()I

    move-result v4

    .line 1984
    .local v4, "height":I
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    .line 1985
    .local v3, "exceptArea":I
    iget v10, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v9

    div-int/lit8 v5, v10, 0x2

    .line 1986
    .local v5, "left":I
    iget v10, v2, Landroid/graphics/Point;->y:I

    sub-int v11, v4, v3

    sub-int/2addr v10, v11

    div-int/lit8 v8, v10, 0x2

    .line 1987
    .local v8, "top":I
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1988
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a002f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1989
    .local v7, "multiSelectPanelHeight":I
    if-gt v8, v7, :cond_0

    .line 1990
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int v8, v7, v10

    .line 1993
    .end local v7    # "multiSelectPanelHeight":I
    :cond_0
    iput v9, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    .line 1994
    iput v4, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    .line 1995
    iput v5, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    .line 1996
    iput v8, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    .line 2000
    iget-object v10, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2001
    .local v0, "addButtonLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 2002
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateBorderWidth()I

    move-result v1

    .line 2003
    .local v1, "borderWidth":I
    const/16 v10, 0x33

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2004
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getBorderHeight()I

    move-result v10

    iget v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2005
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2006
    sub-int v10, v9, v1

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    iget v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    add-int/2addr v10, v11

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2014
    .end local v1    # "borderWidth":I
    :goto_0
    return-void

    .line 2008
    :cond_1
    const/16 v10, 0x51

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2009
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2010
    iget v10, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    iget v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    add-int/2addr v10, v11

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2011
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private clearDragInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1697
    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1698
    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    .line 1699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1700
    return-void
.end method

.method private completeDragExit(Z)V
    .locals 4
    .param p1, "dropComplete"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1670
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v1, :cond_4

    .line 1671
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMoveToHomeAppsByDragging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1672
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1673
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1674
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    instance-of v1, v1, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v1, :cond_2

    .line 1675
    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1679
    :goto_0
    const-string v1, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1681
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1682
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1687
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    .line 1694
    :goto_2
    return-void

    .line 1677
    .restart local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    goto :goto_0

    .line 1685
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->closeFolder()V

    goto :goto_1

    .line 1688
    :cond_4
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v3, :cond_5

    .line 1689
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    goto :goto_2

    .line 1691
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    .line 1692
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->clearDragInfo()V

    goto :goto_2
.end method

.method private createAddButton()Landroid/view/View;
    .locals 7

    .prologue
    .line 2648
    const v4, 0x7f110083

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 2649
    .local v3, "stub":Landroid/view/ViewStub;
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 2651
    .local v1, "buttonView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2652
    const v4, 0x7f0200d8

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2661
    :cond_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2662
    const v4, 0x7f110093

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2663
    .local v0, "addButtonText":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 2664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2665
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2667
    .end local v2    # "description":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private dismissColorPickerItems(Landroid/view/View;)V
    .locals 3
    .param p1, "colorView"    # Landroid/view/View;

    .prologue
    .line 2626
    if-eqz p1, :cond_0

    .line 2627
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2628
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2630
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private doneEditingFolderName(Z)V
    .locals 14
    .param p1, "commit"    # Z

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 774
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 778
    .local v9, "tempTitle":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 779
    .local v8, "newTitle":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 783
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/folder/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$11;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$11;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->post(Ljava/lang/Runnable;)Z

    .line 794
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 795
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/common/base/controller/ControllerBase;->onUpdateAlphabetList(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 796
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/common/base/controller/ControllerBase;->getLocationInfoFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    .line 797
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v7, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v7}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 798
    .local v7, "newFolderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v7, v0}, Lcom/android/launcher3/folder/FolderInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 799
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v1, v7}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 804
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v7    # "newFolderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/GSIMLogging;->getFolderNameValue(J)I

    move-result v10

    .line 805
    .local v10, "value":I
    const/4 v1, -0x1

    if-eq v10, v1, :cond_1

    .line 806
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x64

    cmp-long v1, v2, v12

    if-nez v1, :cond_4

    .line 807
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOFN"

    .line 808
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 807
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 818
    .end local v10    # "value":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1, v11}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setFocusableInTouchMode(Z)V

    .line 819
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->clearFocus()V

    .line 820
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setFocusableInTouchMode(Z)V

    .line 822
    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    .line 825
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v11, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 826
    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    .line 828
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v1, v11}, Lcom/android/launcher3/common/base/controller/ControllerBase;->notifyCapture(Z)V

    .line 830
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V

    .line 833
    :cond_2
    return-void

    .line 801
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 809
    .restart local v10    # "value":I
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v1, v2, v12

    if-nez v1, :cond_1

    .line 810
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APFN"

    .line 811
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 810
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method public static fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/view/FolderView;
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method private getContentAreaHeight()I
    .locals 5

    .prologue
    .line 2017
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinHeight:I

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCellLayoutChildrenHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    add-int/2addr v3, v4

    .line 2018
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2017
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getContentAreaWidth()I
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCellLayoutChildrenWidth()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getFolderColorByView(Landroid/view/View;)Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2430
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 2431
    .local v0, "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2432
    .local v1, "colorView":Landroid/widget/ImageView;
    if-ne v1, p1, :cond_0

    .line 2436
    .end local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .end local v1    # "colorView":Landroid/widget/ImageView;
    :goto_1
    return-object v0

    .line 2430
    .restart local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .restart local v1    # "colorView":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2436
    .end local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .end local v1    # "colorView":Landroid/widget/ImageView;
    :cond_1
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    goto :goto_1
.end method

.method private getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;[F)I
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "recycle"    # [F

    .prologue
    .line 1631
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p2

    .line 1634
    const/4 v2, 0x0

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingLeft()I

    move-result v3

    sub-int v0, v2, v3

    .line 1635
    .local v0, "pixelX":I
    const/4 v2, 0x1

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    sub-int v1, v2, v3

    .line 1637
    .local v1, "pixelY":I
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->findNearestArea(II)I

    move-result v2

    return v2
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "intercept"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2828
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v3, v4, :cond_5

    .line 2829
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolderTextRegion(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2830
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 2831
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolderHeaderRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2832
    .local v0, "needToHandleByOtherView":Z
    if-nez v0, :cond_1

    .line 2849
    .end local v0    # "needToHandleByOtherView":Z
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "needToHandleByOtherView":Z
    :cond_1
    move v1, v2

    .line 2832
    goto :goto_0

    .line 2834
    .end local v0    # "needToHandleByOtherView":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_4

    .line 2835
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolderBorderOutside(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2836
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2837
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f090064

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2838
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2, v1}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    goto :goto_0

    .line 2839
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2840
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 2844
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolder(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2845
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 2849
    goto :goto_0
.end method

.method private isEventOverFolder(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2890
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 2891
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    if-eqz v0, :cond_2

    .line 2892
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2893
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2896
    const v5, 0x7f11007f

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2897
    .local v1, "pageIndicator":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2898
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2912
    .end local v1    # "pageIndicator":Landroid/view/View;
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v3

    .line 2904
    .restart local v1    # "pageIndicator":Landroid/view/View;
    .restart local v2    # "r":Landroid/graphics/Rect;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v5, v2}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2905
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 2906
    goto :goto_0

    .end local v1    # "pageIndicator":Landroid/view/View;
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_2
    move v3, v4

    .line 2912
    goto :goto_0
.end method

.method private isEventOverFolderBorderOutside(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2877
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 2878
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getBorder()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2879
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2880
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getBorder()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2882
    const/4 v2, 0x1

    .line 2886
    .end local v1    # "r":Landroid/graphics/Rect;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isEventOverFolderHeaderRegion(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2865
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 2866
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2867
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2868
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2870
    const/4 v2, 0x1

    .line 2873
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isEventOverFolderTextRegion(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2853
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 2854
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2855
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2856
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getEditTextRegion()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2858
    const/4 v2, 0x1

    .line 2861
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedToMakeClone(Landroid/view/View;)Z
    .locals 12
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2920
    const/4 v2, 0x0

    .line 2921
    .local v2, "needToMakeClone":Z
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2922
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    move v0, v6

    .line 2923
    .local v0, "isSourceApps":Z
    :goto_0
    const/4 v1, 0x0

    .line 2924
    .local v1, "isTargetHome":Z
    instance-of v8, p1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v8, :cond_5

    move-object v3, p1

    .line 2925
    check-cast v3, Lcom/android/launcher3/folder/view/FolderView;

    .line 2926
    .local v3, "targetFolder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-wide v4, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 2927
    .local v4, "targetContainer":J
    const-wide/16 v8, -0x64

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    const-wide/16 v8, -0x65

    cmp-long v8, v4, v8

    if-nez v8, :cond_4

    :cond_0
    move v1, v6

    .line 2932
    .end local v3    # "targetFolder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v4    # "targetContainer":J
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 2933
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    .line 2936
    .end local v0    # "isSourceApps":Z
    .end local v1    # "isTargetHome":Z
    :cond_2
    return v2

    :cond_3
    move v0, v7

    .line 2922
    goto :goto_0

    .restart local v0    # "isSourceApps":Z
    .restart local v1    # "isTargetHome":Z
    .restart local v3    # "targetFolder":Lcom/android/launcher3/folder/view/FolderView;
    .restart local v4    # "targetContainer":J
    :cond_4
    move v1, v7

    .line 2927
    goto :goto_1

    .line 2929
    .end local v3    # "targetFolder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v4    # "targetContainer":J
    :cond_5
    instance-of v6, p1, Lcom/android/launcher3/home/Workspace;

    if-nez v6, :cond_6

    instance-of v6, p1, Lcom/android/launcher3/home/Hotseat;

    if-nez v6, :cond_6

    instance-of v6, p1, Lcom/android/launcher3/home/CancelDropTarget;

    if-nez v6, :cond_6

    instance-of v6, p1, Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_1

    .line 2930
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V
    .locals 23
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "reorderDelay"    # I

    .prologue
    .line 1244
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v20, v0

    .line 1249
    .local v20, "r":[F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;[F)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1251
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1253
    .local v15, "dragView":Lcom/android/launcher3/common/drag/DragView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1254
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1283
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1287
    const/4 v4, 0x0

    aget v22, v20, v4

    .line 1288
    .local v22, "x":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v14

    .line 1289
    .local v14, "currentPageIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v13

    .line 1290
    .local v13, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v13, :cond_3

    .line 1291
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ee66666    # 0.45f

    mul-float v12, v4, v5

    .line 1293
    .local v12, "cellOverlap":F
    cmpg-float v4, v22, v12

    if-gez v4, :cond_9

    const/16 v16, 0x1

    .line 1294
    .local v16, "isOutsideLeftEdge":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v12

    cmpl-float v4, v22, v4

    if-lez v4, :cond_a

    const/16 v17, 0x1

    .line 1296
    .local v17, "isOutsideRightEdge":Z
    :goto_3
    if-lez v14, :cond_c

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_b

    if-eqz v17, :cond_c

    .line 1297
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher3/folder/view/FolderView;->showScrollHint(ILcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 1310
    .end local v12    # "cellOverlap":F
    .end local v16    # "isOutsideLeftEdge":Z
    .end local v17    # "isOutsideRightEdge":Z
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    if-eqz v4, :cond_0

    .line 1311
    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v4

    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v5

    sub-float v21, v4, v5

    .line 1312
    .local v21, "touchY":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v21, v4

    if-ltz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v21, v4

    if-gtz v4, :cond_0

    .line 1313
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v4, :cond_0

    .line 1316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/folder/controller/FolderController;->showFolderBgView(ZZ)V

    goto/16 :goto_0

    .line 1256
    .end local v13    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v14    # "currentPageIndex":I
    .end local v21    # "touchY":F
    .end local v22    # "x":F
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mPrevTargetRank:I

    if-eq v4, v5, :cond_5

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    move/from16 v0, p2

    int-to-long v10, v0

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 1260
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mPrevTargetRank:I

    .line 1263
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    if-eqz v4, :cond_6

    .line 1264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v4, :cond_8

    .line 1265
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    .line 1271
    :cond_6
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v18

    .line 1272
    .local v18, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v18

    if-eq v0, v4, :cond_7

    .line 1273
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1276
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    rem-int v19, v4, v5

    .line 1277
    .local v19, "pagePos":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    rem-int v7, v19, v4

    .line 1278
    .local v7, "cellX":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    div-int v8, v19, v4

    .line 1279
    .local v8, "cellY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    goto/16 :goto_1

    .line 1266
    .end local v7    # "cellX":I
    .end local v8    # "cellY":I
    .end local v18    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v19    # "pagePos":I
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRankForRestore:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    if-eq v4, v5, :cond_6

    .line 1267
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    goto :goto_5

    .line 1293
    .restart local v12    # "cellOverlap":F
    .restart local v13    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v14    # "currentPageIndex":I
    .restart local v22    # "x":F
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1294
    .restart local v16    # "isOutsideLeftEdge":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1296
    .restart local v17    # "isOutsideRightEdge":Z
    :cond_b
    if-nez v16, :cond_2

    .line 1298
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v14, v4, :cond_f

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_e

    if-eqz v16, :cond_f

    .line 1300
    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher3/folder/view/FolderView;->showScrollHint(ILcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto/16 :goto_4

    .line 1298
    :cond_e
    if-nez v17, :cond_d

    .line 1302
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1303
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 1304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->clearScrollHint()V

    .line 1305
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    goto/16 :goto_4
.end method

.method private onDropExtraObjects(Ljava/util/ArrayList;ZZ)V
    .locals 34
    .param p2, "clone"    # Z
    .param p3, "isFolderDrop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1496
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/16 v25, 0x0

    .line 1498
    .local v25, "needRankUpdate":Z
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    .local v24, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    .local v22, "dropItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderView$DropItem;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    .local v28, "urgentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderView$DropItem;>;"
    const/16 v18, 0x0

    .line 1502
    .local v18, "addItemFromApps":Z
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1503
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1504
    .local v20, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_0

    .line 1505
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 1506
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    .line 1507
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    goto :goto_0

    .line 1510
    :cond_0
    if-eqz p3, :cond_1

    if-eqz v25, :cond_2

    .line 1511
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1512
    const/16 v25, 0x1

    .line 1514
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    .line 1517
    if-eqz p2, :cond_6

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v5

    .line 1518
    .local v5, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_1
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1519
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v29

    .line 1524
    .local v29, "view":Landroid/view/View;
    :goto_2
    iget-wide v0, v5, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v30, v0

    const-wide/16 v32, -0x66

    cmp-long v4, v30, v32

    if-nez v4, :cond_3

    .line 1525
    const/16 v18, 0x1

    .line 1528
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v5, v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v7, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const-wide/16 v8, 0x0

    iget v10, v5, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v11, v5, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    const/4 v12, -0x1

    invoke-interface/range {v4 .. v12}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1531
    new-instance v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    const/4 v4, 0x0

    invoke-direct {v9, v4}, Lcom/android/launcher3/folder/view/FolderView$DropItem;-><init>(Lcom/android/launcher3/folder/view/FolderView$1;)V

    .line 1532
    .local v9, "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v4, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1533
    move-object/from16 v0, v29

    iput-object v0, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    .line 1534
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v7

    div-int/2addr v4, v7

    iput v4, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    .line 1536
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1537
    move/from16 v0, v18

    iput-boolean v0, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->fromApps:Z

    .line 1539
    :cond_4
    iget v4, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v7

    if-ne v4, v7, :cond_5

    .line 1540
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1517
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    .end local v29    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v4

    goto/16 :goto_1

    .line 1521
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    invoke-virtual {v7, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->isInActiveRange(I)Z

    move-result v7

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;

    move-result-object v29

    .restart local v29    # "view":Landroid/view/View;
    goto/16 :goto_2

    .line 1546
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v20    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v29    # "view":Landroid/view/View;
    :cond_8
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    .line 1550
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    .line 1553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v21

    .line 1554
    .local v21, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v19

    .line 1556
    .local v19, "currentPageIndex":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    .line 1557
    .restart local v9    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    const/4 v6, 0x0

    .line 1558
    .local v6, "onFinishAnimationRunnable":Ljava/lang/Runnable;
    iget-object v10, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    .line 1559
    .local v10, "iconView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget v8, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    invoke-virtual {v7, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v26

    .line 1561
    .local v26, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v26, :cond_b

    .line 1562
    iget v7, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    sub-int v7, v7, v19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v8

    mul-int v23, v7, v8

    .line 1563
    .local v23, "expectedX":I
    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    .line 1564
    .local v27, "pageRect":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1565
    move-object/from16 v0, v27

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v17, v23, v7

    .line 1570
    .end local v23    # "expectedX":I
    .end local v27    # "pageRect":Landroid/graphics/Rect;
    .local v17, "translatedX":I
    :goto_4
    new-instance v6, Lcom/android/launcher3/folder/view/FolderView$16;

    .end local v6    # "onFinishAnimationRunnable":Ljava/lang/Runnable;
    move-object/from16 v7, p0

    move-object/from16 v8, v28

    move-object/from16 v11, v24

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher3/folder/view/FolderView$16;-><init>(Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;Lcom/android/launcher3/folder/view/FolderView$DropItem;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1592
    .restart local v6    # "onFinishAnimationRunnable":Ljava/lang/Runnable;
    iget-object v7, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v7, :cond_a

    iget-object v7, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    if-eqz v7, :cond_a

    .line 1593
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v14, 0x12c

    .line 1594
    .local v14, "duration":I
    :goto_5
    iget-object v12, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v13, v9, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v11, v21

    move-object v15, v6

    invoke-virtual/range {v11 .. v17}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V

    goto :goto_3

    .line 1567
    .end local v14    # "duration":I
    .end local v17    # "translatedX":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v17

    .restart local v17    # "translatedX":I
    goto :goto_4

    .line 1593
    :cond_c
    const/4 v14, -0x1

    goto :goto_5

    .line 1598
    .end local v6    # "onFinishAnimationRunnable":Ljava/lang/Runnable;
    .end local v9    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    .end local v10    # "iconView":Landroid/view/View;
    .end local v17    # "translatedX":I
    .end local v26    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_d
    return-void
.end method

.method private replaceFolderWithFinalItem()V
    .locals 3

    .prologue
    .line 2168
    iget-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 2190
    :goto_0
    return-void

    .line 2173
    :cond_0
    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$19;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$19;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 2179
    .local v1, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v0

    .line 2180
    .local v0, "finalChild":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2181
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2182
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2189
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    goto :goto_0

    .line 2184
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2187
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private restoreDragObjectsPosition(Ljava/util/ArrayList;Z)V
    .locals 22
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1910
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    if-eqz p1, :cond_4

    .line 1911
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1912
    .local v20, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mAscComparator:Ljava/util/Comparator;

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1914
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    .local v16, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    .local v12, "dropItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderView$DropItem;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move/from16 v19, v0

    .line 1920
    .local v19, "rankToKeepPosition":I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1921
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1922
    .local v10, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v15, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v15, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1923
    .local v15, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v14

    .line 1924
    .local v14, "icon":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget v5, v15, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move/from16 v0, v19

    invoke-virtual {v4, v14, v15, v5, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;II)V

    .line 1926
    new-instance v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    const/4 v4, 0x0

    invoke-direct {v11, v4}, Lcom/android/launcher3/folder/view/FolderView$DropItem;-><init>(Lcom/android/launcher3/folder/view/FolderView$1;)V

    .line 1927
    .local v11, "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    iget-object v4, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1928
    iput-object v14, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    .line 1929
    iget v4, v15, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    div-int/2addr v4, v5

    iput v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    .line 1930
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1934
    .end local v10    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v11    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    .end local v14    # "icon":Landroid/view/View;
    .end local v15    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    .line 1938
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1939
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    .line 1941
    if-eqz p2, :cond_4

    .line 1942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    .line 1943
    .local v2, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v9

    .line 1945
    .local v9, "currentPageIndex":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    .line 1946
    .restart local v11    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v17

    .line 1948
    .local v17, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v17, :cond_3

    .line 1949
    iget v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v4

    mul-int v13, v3, v4

    .line 1950
    .local v13, "expectedX":I
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 1951
    .local v18, "pageRect":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1952
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v13, v3

    .line 1957
    .end local v13    # "expectedX":I
    .end local v18    # "pageRect":Landroid/graphics/Rect;
    .local v8, "translatedX":I
    :goto_2
    iget-object v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1958
    iget-object v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V

    goto :goto_1

    .line 1954
    .end local v8    # "translatedX":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v8

    .restart local v8    # "translatedX":I
    goto :goto_2

    .line 1964
    .end local v2    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v8    # "translatedX":I
    .end local v9    # "currentPageIndex":I
    .end local v11    # "dropItem":Lcom/android/launcher3/folder/view/FolderView$DropItem;
    .end local v12    # "dropItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderView$DropItem;>;"
    .end local v16    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v17    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v19    # "rankToKeepPosition":I
    .end local v20    # "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_4
    return-void
.end method

.method private sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1167
    .line 1168
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1169
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1170
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 1171
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1172
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1175
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 5
    .param p1, "isEditingName"    # Z

    .prologue
    .line 2805
    .line 2806
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2807
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2808
    if-eqz p1, :cond_1

    const v2, 0x7f09019e

    .line 2809
    .local v2, "stringId":I
    :goto_0
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2811
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2812
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2813
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2815
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "stringId":I
    :cond_0
    return-void

    .line 2808
    :cond_1
    const v2, 0x7f09019d

    goto :goto_0
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    .line 1206
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1207
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    .line 1208
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    .line 1210
    :cond_1
    return-void
.end method

.method private setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V
    .locals 26
    .param p1, "color"    # Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .param p2, "bUpdateItem"    # Z

    .prologue
    .line 2457
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v9

    .line 2459
    .local v9, "isDefaultTheme":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColorTalkback(Lcom/android/launcher3/folder/view/FolderView$FolderColor;)V

    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 2461
    .local v14, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget-object v6, v21, v20

    .line 2462
    .local v6, "folderColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2463
    .local v4, "colorView":Landroid/widget/ImageView;
    if-eqz v4, :cond_1

    .line 2464
    move-object/from16 v0, p1

    if-ne v0, v6, :cond_2

    .line 2465
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f02009b

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2466
    .local v3, "checkedImage":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    sget-object v23, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 2467
    const v23, 0x7f0e0005

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v13

    .line 2468
    .local v13, "pickerBlackColor":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2470
    .end local v13    # "pickerBlackColor":I
    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2461
    .end local v3    # "checkedImage":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 2472
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2478
    .end local v4    # "colorView":Landroid/widget/ImageView;
    .end local v6    # "folderColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x66

    cmp-long v20, v20, v22

    if-nez v20, :cond_5

    .line 2479
    :cond_4
    const v20, 0x7f0e0017

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v19

    .line 2480
    .local v19, "titleColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setTextColor(I)V

    .line 2481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-object/from16 v20, v0

    const v21, -0x70000001

    and-int v21, v21, v19

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHintTextColor(I)V

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderBottomLine:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x4dffffff    # 5.3687088E8f

    and-int v21, v21, v19

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2485
    .end local v19    # "titleColor":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2486
    .local v12, "openFolderColor":I
    sget-object v20, Lcom/android/launcher3/folder/view/FolderView;->sOptionButtonImage:Landroid/graphics/Bitmap;

    if-nez v20, :cond_6

    .line 2487
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f02009a

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v12}, Lcom/android/launcher3/util/BitmapUtils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v20

    sput-object v20, Lcom/android/launcher3/folder/view/FolderView;->sOptionButtonImage:Landroid/graphics/Bitmap;

    .line 2489
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher3/folder/view/FolderView;->sOptionButtonImage:Landroid/graphics/Bitmap;

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2492
    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v5, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2493
    .local v5, "currentDensity":I
    if-nez v9, :cond_d

    .line 2494
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v7

    .line 2495
    .local v7, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getFolderType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 2496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2555
    .end local v7    # "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    :cond_7
    if-eqz p2, :cond_8

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 2557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconBackgroundColor(I)V

    .line 2558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2560
    :cond_8
    return-void

    .line 2498
    .restart local v7    # "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    :cond_9
    const v20, 0x7f0a003d

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 2499
    .local v8, "iconSize":I
    const v20, 0x7f0a0181

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    sub-int v16, v8, v20

    .line 2501
    .local v16, "roundSize":I
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v20, 0x0

    move/from16 v21, v20

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    aget-object v6, v22, v21

    .line 2502
    .restart local v6    # "folderColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2503
    .restart local v4    # "colorView":Landroid/widget/ImageView;
    if-eqz v4, :cond_b

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2505
    .local v10, "itemColor":I
    sget-object v20, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/Drawable;

    .line 2506
    .local v11, "itemImage":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_a

    .line 2507
    const v20, 0x7f02007d

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 2508
    .local v17, "strokebase":Landroid/graphics/drawable/Drawable;
    div-int/lit8 v20, v16, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v10, v8, v8, v0, v1}, Lcom/android/launcher3/theme/ThemeUtils;->roundBitmap(IIIILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2509
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_c

    .line 2510
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11    # "itemImage":Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2511
    .restart local v11    # "itemImage":Landroid/graphics/drawable/Drawable;
    sget-object v20, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2517
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "strokebase":Landroid/graphics/drawable/Drawable;
    :cond_a
    :goto_3
    if-eqz v11, :cond_b

    .line 2518
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2501
    .end local v10    # "itemColor":I
    .end local v11    # "itemImage":Landroid/graphics/drawable/Drawable;
    :cond_b
    add-int/lit8 v20, v21, 0x1

    move/from16 v21, v20

    goto :goto_2

    .line 2513
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "itemColor":I
    .restart local v11    # "itemImage":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "strokebase":Landroid/graphics/drawable/Drawable;
    :cond_c
    const-string v20, "FolderView"

    const-string v24, "setFolderColor : can\'t create color picker image"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2523
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "colorView":Landroid/widget/ImageView;
    .end local v6    # "folderColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .end local v7    # "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    .end local v8    # "iconSize":I
    .end local v10    # "itemColor":I
    .end local v11    # "itemImage":Landroid/graphics/drawable/Drawable;
    .end local v16    # "roundSize":I
    .end local v17    # "strokebase":Landroid/graphics/drawable/Drawable;
    :cond_d
    const/16 v20, 0x140

    move/from16 v0, v20

    if-ge v5, v0, :cond_7

    .line 2524
    int-to-float v0, v5

    move/from16 v20, v0

    const/high16 v21, 0x3fc00000    # 1.5f

    mul-float v20, v20, v21

    const/high16 v21, 0x43a00000    # 320.0f

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2525
    .local v18, "targetDensity":I
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v20, 0x0

    move/from16 v21, v20

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    aget-object v6, v22, v21

    .line 2526
    .restart local v6    # "folderColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2527
    .restart local v4    # "colorView":Landroid/widget/ImageView;
    if-eqz v4, :cond_f

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2529
    .restart local v10    # "itemColor":I
    sget-object v20, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/Drawable;

    .line 2530
    .restart local v11    # "itemImage":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_e

    .line 2532
    sget-object v20, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-object/from16 v0, v20

    if-ne v6, v0, :cond_10

    .line 2533
    const v15, 0x7f020074

    .line 2543
    .local v15, "resId":I
    :goto_5
    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v14, v15, v0, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2544
    sget-object v20, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2547
    .end local v15    # "resId":I
    :cond_e
    if-eqz v11, :cond_f

    .line 2548
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2525
    .end local v10    # "itemColor":I
    .end local v11    # "itemImage":Landroid/graphics/drawable/Drawable;
    :cond_f
    add-int/lit8 v20, v21, 0x1

    move/from16 v21, v20

    goto :goto_4

    .line 2534
    .restart local v10    # "itemColor":I
    .restart local v11    # "itemImage":Landroid/graphics/drawable/Drawable;
    :cond_10
    sget-object v20, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-object/from16 v0, v20

    if-ne v6, v0, :cond_11

    .line 2535
    const v15, 0x7f020076

    .restart local v15    # "resId":I
    goto :goto_5

    .line 2536
    .end local v15    # "resId":I
    :cond_11
    sget-object v20, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-object/from16 v0, v20

    if-ne v6, v0, :cond_12

    .line 2537
    const v15, 0x7f020077

    .restart local v15    # "resId":I
    goto :goto_5

    .line 2538
    .end local v15    # "resId":I
    :cond_12
    sget-object v20, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-object/from16 v0, v20

    if-ne v6, v0, :cond_13

    .line 2539
    const v15, 0x7f02007a

    .restart local v15    # "resId":I
    goto :goto_5

    .line 2541
    .end local v15    # "resId":I
    :cond_13
    const v15, 0x7f020079

    .restart local v15    # "resId":I
    goto :goto_5
.end method

.method private setFolderColorTalkback(Lcom/android/launcher3/folder/view/FolderView$FolderColor;)V
    .locals 11
    .param p1, "newColor"    # Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    .prologue
    const/4 v4, 0x0

    .line 2440
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v0, v5, v3

    .line 2441
    .local v0, "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2443
    .local v1, "colorView":Landroid/widget/ImageView;
    sget-object v7, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne v0, v7, :cond_1

    .line 2444
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090040

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2448
    .local v2, "description":Ljava/lang/String;
    :goto_1
    if-ne v0, p1, :cond_0

    .line 2449
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900b4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2451
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2440
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2446
    .end local v2    # "description":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090041

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "description":Ljava/lang/String;
    goto :goto_1

    .line 2453
    .end local v0    # "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .end local v1    # "colorView":Landroid/widget/ImageView;
    .end local v2    # "description":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setupFolderLayout()V
    .locals 17

    .prologue
    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 553
    .local v10, "res":Landroid/content/res/Resources;
    const v12, 0x7f0a0031

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorderMargin:I

    .line 554
    const v12, 0x7f0a0032

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinHeight:I

    .line 555
    const v12, 0x7f0a0033

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    .line 556
    const v12, 0x7f0a003b

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mPageSpacingOnDrag:I

    .line 558
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 559
    .local v11, "screenSize":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 560
    iget v12, v11, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorderMargin:I

    mul-int/lit8 v13, v13, 0x2

    sub-int v8, v12, v13

    .line 561
    .local v8, "minBorderWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 562
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v12, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 565
    const v12, 0x7f110076

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 566
    .local v5, "headerContent":Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 567
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 568
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v12, 0x7f0a0036

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 569
    const v12, 0x7f0a0035

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 573
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const/4 v13, 0x0

    const v14, 0x7f0a0042

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setTextSize(IF)V

    .line 574
    const v12, 0x7f110077

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 575
    .local v4, "folderNameWrapper":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 576
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 577
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v12, 0x7f0a0040

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 578
    const v12, 0x7f0a0041

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 579
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 584
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 585
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v12, 0x7f0a0044

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 586
    const v12, 0x7f0a0044

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 587
    const v12, 0x7f0a0043

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 591
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 592
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 593
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v12, 0x7f0a0044

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 594
    const v12, 0x7f0a003e

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 596
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 598
    .local v3, "colorView":Landroid/widget/ImageView;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 599
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 600
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v13, 0x7f0a003d

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 601
    const v13, 0x7f0a003d

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 602
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v13

    if-lez v13, :cond_4

    .line 603
    const v13, 0x7f0a003c

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 604
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 609
    .end local v3    # "colorView":Landroid/widget/ImageView;
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    const v12, 0x7f11008c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 610
    .local v2, "colorPickerGapDummy":Landroid/view/View;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 611
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 612
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v12, 0x7f0a003f

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 617
    .end local v2    # "colorPickerGapDummy":Landroid/view/View;
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    const/4 v13, 0x0

    const v14, 0x7f0a003a

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->setPadding(IIII)V

    .line 618
    const v12, 0x7f11007f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 619
    .local v9, "pageIndicator":Landroid/view/View;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 620
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 621
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v12, 0x7f0a00b7

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 626
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    const/4 v7, 0x0

    .line 627
    .local v7, "measureSpec":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v12, v7, v7}, Landroid/view/View;->measure(II)V

    .line 628
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    .line 629
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    invoke-virtual {v12, v7, v7}, Landroid/view/View;->measure(II)V

    .line 630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    .line 634
    const v12, 0x7f110093

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 635
    .local v1, "addButtonText":Landroid/widget/TextView;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 636
    const/4 v12, 0x0

    const v13, 0x7f0a0039

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v1, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 637
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 638
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v12, 0x7f0a0037

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 640
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    invoke-virtual {v12, v7, v7}, Landroid/view/View;->measure(II)V

    .line 641
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    .line 642
    const v12, 0x7f0a0038

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    .line 647
    return-void
.end method

.method private showScrollHint(ILcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 4
    .param p1, "direction"    # I
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1642
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    if-eq v0, p1, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->showScrollHint(I)V

    .line 1644
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    if-eq v0, p1, :cond_2

    .line 1649
    :cond_1
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    .line 1650
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1651
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;-><init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 1652
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 1654
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1655
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1657
    :cond_2
    return-void
.end method

.method private startBounceAnimationForSearchedApp(Landroid/view/View;)V
    .locals 1
    .param p1, "bounceView"    # Landroid/view/View;

    .prologue
    .line 2981
    if-nez p1, :cond_1

    .line 2989
    :cond_0
    :goto_0
    return-void

    .line 2984
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;-><init>(Landroid/view/View;)V

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 2985
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 2986
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    .line 2987
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->hideAddButton(Z)V

    goto :goto_0
.end method

.method private updateItemLocationsInDatabaseBatch()V
    .locals 9

    .prologue
    .line 1896
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 1897
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1898
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1899
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1900
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_0

    .line 1901
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1902
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1903
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1906
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v6, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const/4 v8, 0x0

    invoke-interface {v5, v2, v6, v7, v8}, Lcom/android/launcher3/common/base/controller/ControllerBase;->modifyItemsInDb(Ljava/util/ArrayList;JI)V

    .line 1907
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v2, 0x1

    .line 1363
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1364
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    .line 1365
    .local v1, "itemType":I
    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1368
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->acceptDropToFolder()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1369
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isFull()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bind(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 11
    .param p1, "info"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p2, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 934
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    .line 935
    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    .line 936
    const/4 v3, 0x0

    .line 938
    .local v3, "needToUpdateDb":Z
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 939
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v10, v9, v6}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZZLandroid/content/Context;)V

    .line 953
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v7, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->bindItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 954
    .local v4, "overflow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v6, "FolderView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bind : items="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , overflow="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 960
    .local v1, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v7, v1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 961
    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v7, v1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 940
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "overflow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v6

    if-le v6, v10, :cond_0

    .line 941
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, "count":I
    iget-object v6, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 944
    .restart local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    if-eq v7, v0, :cond_2

    .line 945
    const/4 v3, 0x1

    .line 946
    goto :goto_0

    .line 948
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 950
    goto :goto_2

    .line 964
    .end local v0    # "count":I
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v4    # "overflow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .line 965
    .local v2, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    if-nez v2, :cond_4

    .line 966
    new-instance v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .end local v2    # "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    invoke-direct {v2, v9, v9}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 967
    .restart local v2    # "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iput-boolean v10, v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    .line 968
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->centerAboutIcon()V

    .line 972
    iput-boolean v10, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 973
    if-eqz v3, :cond_5

    .line 974
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateItemLocationsInDatabaseBatch()V

    .line 977
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    .line 978
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/folder/FolderInfo;->addListener(Lcom/android/launcher3/folder/FolderEventListener;)V

    .line 980
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/launcher3/folder/view/FolderView;->sDefaultFolderName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v7, v7, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 981
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v7, v7, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 987
    :goto_3
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager;->isKellyPreloadIconTheme()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 988
    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    .line 993
    .local v5, "selectedColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    :goto_4
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v6, v6, Lcom/android/launcher3/folder/FolderInfo;->color:I

    if-ltz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v6, v6, Lcom/android/launcher3/folder/FolderInfo;->color:I

    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_6

    .line 994
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v7, v7, Lcom/android/launcher3/folder/FolderInfo;->color:I

    aget-object v5, v6, v7

    .line 996
    :cond_6
    invoke-direct {p0, v5, v9}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V

    .line 999
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    new-instance v7, Lcom/android/launcher3/folder/view/FolderView$13;

    invoke-direct {v7, p0}, Lcom/android/launcher3/folder/view/FolderView$13;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->post(Ljava/lang/Runnable;)Z

    .line 1006
    return-void

    .line 983
    .end local v5    # "selectedColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 990
    :cond_8
    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    .restart local v5    # "selectedColor":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    goto :goto_4
.end method

.method public bindController(Lcom/android/launcher3/folder/controller/FolderController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 2961
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    .line 2962
    return-void
.end method

.method public completeDragExit()V
    .locals 1

    .prologue
    .line 1666
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit(Z)V

    .line 1667
    return-void
.end method

.method public dismissEditingName()V
    .locals 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 770
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->doneEditingFolderName(Z)V

    .line 771
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 904
    const/4 v0, 0x1

    return v0
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v0, p1}, Lcom/android/launcher3/Stats$LaunchSourceUtils;->populateSourceDataFromAncestorProvider(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2425
    const-string v0, "sub_container"

    const-string v1, "folder"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    const-string v0, "sub_container_page"

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2427
    return-void
.end method

.method public getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;
    .locals 1

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    return-object v0
.end method

.method public getBorder()Landroid/view/View;
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBorderHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2126
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    if-nez v0, :cond_0

    .line 2127
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/folder/view/FolderView;->measure(II)V

    .line 2129
    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2119
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    if-nez v0, :cond_0

    .line 2120
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/folder/view/FolderView;->measure(II)V

    .line 2122
    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    return v0
.end method

.method public getContent()Lcom/android/launcher3/folder/view/FolderPagedView;
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    return-object v0
.end method

.method public getContentBorderHeight()I
    .locals 2

    .prologue
    .line 2137
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getBorderHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getContentBorderWidth()I
    .locals 1

    .prologue
    .line 2133
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getBorderWidth()I

    move-result v0

    return v0
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 4

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v0, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2994
    const/4 v0, 0x4

    .line 2996
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    return-object v0
.end method

.method public getFolderNameView()Lcom/android/launcher3/folder/view/FolderNameEditText;
    .locals 1

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    return-object v0
.end method

.method public getFolderState()I
    .locals 2

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getState()I

    move-result v0

    .line 919
    :cond_0
    return v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1607
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1612
    iget-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    if-eqz v1, :cond_1

    .line 1613
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    .line 1614
    .local v0, "screenHeight":I
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1615
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v0, :cond_0

    .line 1616
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1621
    .end local v0    # "screenHeight":I
    :cond_0
    :goto_0
    return-void

    .line 1619
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getInfo()Lcom/android/launcher3/folder/FolderInfo;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    return-object v0
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2396
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2398
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$22;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$22;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    .line 2406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOutlineColor()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3002
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3003
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 3005
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v0, p1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 9
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1805
    if-nez p1, :cond_0

    .line 1832
    :goto_0
    return v6

    .line 1807
    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1809
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v7, :cond_e

    move v0, v5

    .line 1810
    .local v0, "app":Z
    :goto_1
    iget-object v7, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v7}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_f

    move v1, v5

    .line 1811
    .local v1, "homeFolder":Z
    :goto_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    .line 1812
    .local v2, "homeOnlyMode":Z
    const/4 v4, 0x0

    .line 1814
    .local v4, "optionFlags":I
    or-int/lit8 v4, v4, 0x1

    .line 1815
    if-eqz v1, :cond_1

    or-int/lit8 v4, v4, 0x2

    .line 1816
    :cond_1
    or-int/lit8 v4, v4, 0x20

    .line 1817
    if-eqz v0, :cond_2

    or-int/lit8 v4, v4, 0x40

    .line 1818
    :cond_2
    if-eqz v0, :cond_3

    or-int/lit16 v4, v4, 0x80

    .line 1819
    :cond_3
    if-eqz v0, :cond_4

    or-int/lit16 v4, v4, 0x100

    .line 1820
    :cond_4
    if-eqz v0, :cond_5

    or-int/lit16 v4, v4, 0x200

    .line 1821
    :cond_5
    or-int/lit16 v4, v4, 0x400

    .line 1822
    if-eqz v0, :cond_6

    or-int/lit16 v4, v4, 0x4000

    .line 1823
    :cond_6
    if-eqz v0, :cond_7

    const v5, 0x8000

    or-int/2addr v4, v5

    .line 1824
    :cond_7
    or-int/lit8 v4, v4, 0x10

    .line 1825
    if-nez v1, :cond_8

    or-int/lit8 v4, v4, 0x4

    .line 1826
    :cond_8
    if-nez v2, :cond_9

    if-nez v1, :cond_a

    :cond_9
    or-int/lit16 v4, v4, 0x1000

    .line 1827
    :cond_a
    if-nez v2, :cond_b

    if-nez v1, :cond_c

    :cond_b
    or-int/lit16 v4, v4, 0x2000

    .line 1828
    :cond_c
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSetToZeroPage()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1829
    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    :cond_d
    move v6, v4

    .line 1832
    goto :goto_0

    .end local v0    # "app":Z
    .end local v1    # "homeFolder":Z
    .end local v2    # "homeOnlyMode":Z
    .end local v4    # "optionFlags":I
    :cond_e
    move v0, v6

    .line 1809
    goto :goto_1

    .restart local v0    # "app":Z
    :cond_f
    move v1, v6

    .line 1810
    goto :goto_2
.end method

.method public getTargetView()Landroid/view/View;
    .locals 0

    .prologue
    .line 1602
    return-object p0
.end method

.method public getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$21;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/folder/view/FolderView$21;-><init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideAddButton(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2687
    if-eqz p1, :cond_1

    .line 2688
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->animateDismiss(Landroid/view/View;Z)V

    .line 2696
    :cond_0
    :goto_0
    return-void

    .line 2690
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideHintPages()V
    .locals 1

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->hideHintPages()V

    .line 2708
    return-void
.end method

.method public hideItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 2227
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    .line 2228
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2229
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2231
    :cond_0
    return-void
.end method

.method public isAllIconViewInflated()Z
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->isAllIconViewInflated()Z

    move-result v0

    return v0
.end method

.method public isAppsAlphabeticViewType()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2940
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    move v1, v3

    .line 2941
    .local v1, "isInApps":Z
    :goto_0
    const/4 v0, 0x0

    .line 2942
    .local v0, "isAlphabeticViewType":Z
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v2

    .line 2943
    .local v2, "mViewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v2, v5, :cond_0

    .line 2944
    const/4 v0, 0x1

    .line 2946
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v3

    .end local v0    # "isAlphabeticViewType":Z
    .end local v1    # "isInApps":Z
    .end local v2    # "mViewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    :cond_1
    move v1, v4

    .line 2940
    goto :goto_0

    .restart local v0    # "isAlphabeticViewType":Z
    .restart local v1    # "isInApps":Z
    .restart local v2    # "mViewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    :cond_2
    move v3, v4

    .line 2946
    goto :goto_1
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 2193
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1
    .param p1, "isDrop"    # Z

    .prologue
    .line 1214
    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->isFull()Z

    move-result v0

    return v0
.end method

.method public isWhiteBg()Z
    .locals 2

    .prologue
    .line 3015
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDrop()V
    .locals 1

    .prologue
    .line 1967
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 1968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    .line 1970
    :cond_0
    return-void
.end method

.method public notifyFolderItemsChanged()V
    .locals 1

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2956
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v0}, Lcom/android/launcher3/common/base/controller/ControllerBase;->notifyControllerItemsChanged()V

    .line 2958
    :cond_0
    return-void
.end method

.method notifyIconViewInflated(I)V
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 1014
    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    .line 1017
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 650
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 679
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 653
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->stopBounceAnimation()V

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 656
    .local v5, "tag":Ljava/lang/Object;
    instance-of v6, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_4

    .line 657
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 658
    .local v0, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->isReorderAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    .line 662
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 663
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 665
    .restart local p1    # "v":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    goto :goto_0

    .line 667
    .end local v0    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f110084

    if-ne v6, v7, :cond_0

    .line 668
    new-instance v1, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v1}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 669
    .local v1, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v6, "KEY_PICKER_MODE"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 670
    const-string v6, "KEY_FOLDER_ICON_VIEW"

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 671
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v1}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 673
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 674
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f0901ab

    .line 675
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "screenID":Ljava/lang/String;
    :goto_1
    const v6, 0x7f090132

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, "eventID":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    .end local v2    # "eventID":Ljava/lang/String;
    .end local v4    # "screenID":Ljava/lang/String;
    :cond_5
    const v6, 0x7f0901b7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public onClose(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "closeFolderAnim"    # Landroid/animation/Animator;

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/view/DragLayer;

    if-nez v0, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1107
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1108
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 1113
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1114
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setVisibility(I)V

    .line 1117
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->stopBounceAnimation()V

    .line 1118
    if-eqz p1, :cond_3

    .line 1119
    new-instance v0, Lcom/android/launcher3/folder/view/FolderView$15;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/view/FolderView$15;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1134
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    .line 1135
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->onCloseComplete()V

    goto :goto_0
.end method

.method onCloseComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2145
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->clearFocus()V

    .line 2146
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->requestFocus()Z

    .line 2148
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setCrosshairsVisibility(Z)V

    .line 2150
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    if-eqz v0, :cond_0

    .line 2151
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    .line 2152
    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    .line 2154
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2155
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    if-nez v0, :cond_2

    .line 2156
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    .line 2161
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    .line 2162
    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    .line 2163
    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    .line 2164
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->clearDragInfo()V

    .line 2165
    return-void

    .line 2157
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-eqz v0, :cond_1

    .line 2158
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 709
    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    .line 710
    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    .line 712
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->onConfigurationChangedIfNeeded()V

    .line 714
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->setupFolderLayout()V

    .line 715
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->centerAboutIcon()V

    .line 716
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    .line 1219
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mPrevTargetRank:I

    .line 1220
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1223
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollAreaOffset:I

    .line 1225
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForNewItem(Z)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    .line 1230
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1231
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1233
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1234
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderBgView;->onMoveInFolder()V

    .line 1236
    :cond_1
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 9
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v4, -0x1

    .line 1326
    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v6, :cond_0

    .line 1327
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 1328
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 1330
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1332
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1333
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1334
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    if-eq v1, v4, :cond_1

    .line 1335
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->clearScrollHint()V

    .line 1336
    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    .line 1339
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1341
    if-eqz p2, :cond_3

    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_3

    .line 1342
    const/4 v5, 0x0

    .line 1343
    .local v5, "direction":I
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1344
    .local v0, "dragView":Lcom/android/launcher3/common/drag/DragView;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;

    move-result-object v7

    .line 1345
    .local v7, "folderBgView":Lcom/android/launcher3/folder/view/FolderBgView;
    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 1346
    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v8, v1

    .line 1347
    .local v8, "touchY":I
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v8, v1, :cond_4

    .line 1348
    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderBgView;->onMoveFromFolderTop()V

    .line 1349
    const/4 v5, 0x0

    .line 1356
    .end local v8    # "touchY":I
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveFromFolderLog(JZILcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 1359
    .end local v0    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v5    # "direction":I
    .end local v7    # "folderBgView":Lcom/android/launcher3/folder/view/FolderBgView;
    :cond_3
    return-void

    .line 1351
    .restart local v0    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .restart local v5    # "direction":I
    .restart local v7    # "folderBgView":Lcom/android/launcher3/folder/view/FolderBgView;
    .restart local v8    # "touchY":I
    :cond_4
    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderBgView;->onMoveFromFolderBottom()V

    .line 1352
    const/4 v5, 0x1

    goto :goto_0

    .line 1356
    .end local v8    # "touchY":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1240
    const/16 v0, 0xfa

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V

    .line 1241
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 23
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1378
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;[F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-interface {v2, v3}, Lcom/android/launcher3/util/alarm/OnAlarmListener;->onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1386
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    .line 1391
    const/16 v20, 0x0

    .line 1392
    .local v20, "needClone":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v2, :cond_e

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    const/16 v19, 0x1

    .line 1394
    .local v19, "isInApps":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_4

    .line 1396
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 1397
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 1399
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1400
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1, v3}, Lcom/android/launcher3/folder/view/FolderView;->onDropExtraObjects(Ljava/util/ArrayList;ZZ)V

    .line 1402
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v2, :cond_2

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    .line 1485
    .end local v19    # "isInApps":Z
    :cond_2
    :goto_1
    return-void

    .line 1393
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 1408
    .restart local v19    # "isInApps":Z
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1409
    .local v17, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v2}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v15

    .line 1410
    .local v15, "dragSourceType":I
    if-eqz v19, :cond_5

    if-eqz v15, :cond_6

    const/4 v2, 0x2

    if-eq v15, v2, :cond_6

    :cond_5
    if-nez v19, :cond_7

    const/4 v2, 0x1

    if-eq v15, v2, :cond_6

    const/4 v2, 0x4

    if-ne v15, v2, :cond_7

    :cond_6
    const/16 v20, 0x1

    .line 1413
    :goto_2
    if-eqz v20, :cond_8

    .line 1414
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 1422
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported item type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1410
    :cond_7
    const/16 v20, 0x0

    goto :goto_2

    .line 1416
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v17

    .line 1425
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v4

    .line 1426
    .local v4, "currentDragView":Landroid/view/View;
    const/16 v16, 0x1

    .line 1436
    .end local v15    # "dragSourceType":I
    .end local v19    # "isInApps":Z
    .local v16, "hasMovedLayout":Z
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    .line 1438
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1440
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getScaleX()F

    move-result v21

    .line 1441
    .local v21, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getScaleY()F

    move-result v22

    .line 1442
    .local v22, "scaleY":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->setScaleX(F)V

    .line 1443
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->setScaleY(F)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 1446
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setScaleX(F)V

    .line 1447
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setScaleY(F)V

    .line 1453
    .end local v21    # "scaleX":F
    .end local v22    # "scaleY":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v2, :cond_a

    .line 1454
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0900da

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 1457
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    .line 1461
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1463
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1465
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1466
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    .line 1468
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 1469
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1, v3}, Lcom/android/launcher3/folder/view/FolderView;->onDropExtraObjects(Ljava/util/ArrayList;ZZ)V

    .line 1472
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    const/4 v3, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 1477
    :cond_c
    if-eqz v16, :cond_d

    .line 1478
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const-wide/16 v10, 0x0

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v7, v17

    invoke-interface/range {v6 .. v14}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1479
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->updateItemLocationsInDatabaseBatch()V

    .line 1482
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v2, :cond_2

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto/16 :goto_1

    .line 1419
    .end local v4    # "currentDragView":Landroid/view/View;
    .end local v16    # "hasMovedLayout":Z
    .restart local v15    # "dragSourceType":I
    .restart local v19    # "isInApps":Z
    :pswitch_1
    new-instance v18, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .end local v17    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .local v18, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v17, v18

    .line 1420
    .end local v18    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v17    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    goto/16 :goto_3

    .line 1428
    .end local v15    # "dragSourceType":I
    .end local v17    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v19    # "isInApps":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v17, v0

    .line 1429
    .restart local v17    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    .line 1430
    .restart local v4    # "currentDragView":Landroid/view/View;
    const/16 v16, 0x0

    .line 1432
    .restart local v16    # "hasMovedLayout":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v3

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    div-int/2addr v3, v5

    if-eq v2, v3, :cond_9

    .line 1433
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v5, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertFolderMoveAppLogs(Lcom/android/launcher3/Launcher;Z)V

    goto/16 :goto_4

    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    .line 1449
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1450
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    .line 1709
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v11, :cond_0

    .line 1710
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    .line 1713
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/folder/view/FolderView;->isNeedToMakeClone(Landroid/view/View;)Z

    move-result v7

    .line 1714
    .local v7, "needToMakeClone":Z
    if-eqz p3, :cond_d

    if-nez v7, :cond_d

    .line 1715
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    if-nez v11, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_4

    .line 1717
    const/4 v3, 0x0

    .line 1718
    .local v3, "dropToFolder":Z
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v11, :cond_1

    .line 1719
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_c

    const/4 v3, 0x1

    .line 1722
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/launcher3/home/Workspace;

    if-nez v11, :cond_2

    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/launcher3/home/Hotseat;

    if-eqz v11, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    .line 1724
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    .line 1756
    .end local v3    # "dropToFolder":Z
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1757
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    .line 1758
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    .line 1761
    :cond_5
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    .line 1763
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_8

    .line 1764
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v11}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v11, v11, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v11, :cond_8

    .line 1765
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v11}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1766
    if-nez p3, :cond_7

    .line 1767
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    .line 1769
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v11}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1770
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit(Z)V

    .line 1774
    :cond_8
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    .line 1775
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    .line 1776
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1777
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    .line 1778
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1782
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1783
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->updateItemLocationsInDatabaseBatch()V

    .line 1787
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v12

    if-gt v11, v12, :cond_a

    .line 1789
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 1792
    :cond_a
    if-eqz p3, :cond_b

    .line 1793
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v11, :cond_b

    .line 1794
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V

    .line 1795
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    check-cast v11, Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    .line 1796
    .local v4, "folder":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v11, v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v11, :cond_b

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_b

    .line 1797
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v12, v11}, Lcom/android/launcher3/folder/folderlock/FolderLock;->showItemDropedConfirmDialog(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1801
    .end local v4    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_b
    return-void

    .line 1719
    .restart local v3    # "dropToFolder":Z
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1729
    .end local v3    # "dropToFolder":Z
    :cond_d
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1730
    .local v6, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    .line 1732
    .local v5, "icon":Landroid/view/View;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v10

    .line 1734
    .local v10, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v11, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v11, v12, :cond_e

    .line 1735
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1738
    :cond_e
    iget v11, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v10, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v10, v12}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 1740
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 1742
    iget v11, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    .line 1744
    if-nez v7, :cond_f

    .line 1745
    iget v11, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v12

    div-int v9, v11, v12

    .line 1746
    .local v9, "targetPageIndex":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v11, v9}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v8

    .line 1747
    .local v8, "page":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    .line 1748
    .local v2, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v5, v12, v8}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 1752
    .end local v2    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v8    # "page":Landroid/view/View;
    .end local v9    # "targetPageIndex":I
    :cond_f
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 1753
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v11, v6}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1754
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    goto/16 :goto_1

    .line 1730
    .end local v5    # "icon":Landroid/view/View;
    .end local v10    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    .line 1731
    invoke-virtual {v11, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v5

    goto :goto_2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 836
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 838
    const/4 v0, 0x1

    .line 840
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 14
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
    .line 1837
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    if-eqz p1, :cond_4

    .line 1838
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1839
    .local v7, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mDescComparator:Ljava/util/Comparator;

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1841
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    .line 1842
    const/4 v1, 0x0

    .line 1843
    .local v1, "count":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1844
    .local v2, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v12, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v12}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v8

    .line 1845
    .local v8, "sourceView":Landroid/view/View;
    iget-object v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1846
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v8, :cond_0

    .line 1847
    iget v5, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1848
    .local v5, "removedAppRank":I
    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 1849
    .local v4, "lastRank":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_1

    const/4 v6, 0x1

    .line 1850
    .local v6, "reorderImmediately":Z
    :goto_1
    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v12, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 1851
    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v12, v3}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1852
    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v12, v5, v4, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->realTimeReorder(IIZ)V

    .line 1854
    .end local v4    # "lastRank":I
    .end local v5    # "removedAppRank":I
    .end local v6    # "reorderImmediately":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1855
    goto :goto_0

    .line 1849
    .restart local v4    # "lastRank":I
    .restart local v5    # "removedAppRank":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1856
    .end local v2    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "lastRank":I
    .end local v5    # "removedAppRank":I
    .end local v8    # "sourceView":Landroid/view/View;
    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    .line 1858
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v10

    .line 1859
    .local v10, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    if-eq v11, v12, :cond_3

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1860
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 1861
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .line 1862
    .restart local v4    # "lastRank":I
    iget v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    if-le v11, v4, :cond_5

    move v0, v4

    .line 1863
    .local v0, "adjustedRank":I
    :goto_2
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1864
    .local v9, "targetView":Landroid/view/View;
    invoke-virtual {v10, v0, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1865
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v12, v12, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v0, v13}, Lcom/android/launcher3/folder/view/FolderPagedView;->realTimeReorder(IIZ)V

    .line 1867
    .end local v0    # "adjustedRank":I
    .end local v4    # "lastRank":I
    .end local v9    # "targetView":Landroid/view/View;
    :cond_3
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v10, v12}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 1869
    .end local v1    # "count":I
    .end local v7    # "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v10    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    return-void

    .line 1862
    .restart local v1    # "count":I
    .restart local v4    # "lastRank":I
    .restart local v7    # "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v10    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    goto :goto_2
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
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
    .line 1874
    .local p2, "succeedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .local p3, "failedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1875
    .local v0, "dragObjectsToRestore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isNeedToMakeClone(Landroid/view/View;)Z

    move-result v1

    .line 1876
    .local v1, "needToMakeClone":Z
    if-eqz p2, :cond_0

    .line 1877
    if-eqz v1, :cond_0

    .line 1878
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1881
    :cond_0
    if-eqz p3, :cond_1

    .line 1882
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1885
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    if-nez v2, :cond_2

    .line 1886
    if-nez v1, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->restoreDragObjectsPosition(Ljava/util/ArrayList;Z)V

    .line 1888
    :cond_2
    return-void

    .line 1886
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 327
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 329
    const v5, 0x7f110074

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderContainer:Landroid/view/View;

    .line 330
    const v5, 0x7f11007e

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentContainer:Landroid/view/View;

    .line 331
    const v5, 0x7f11007b

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/folder/view/FolderPagedView;

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    .line 332
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 334
    const v5, 0x7f110078

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/folder/view/FolderNameEditText;

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    .line 335
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v6, Lcom/android/launcher3/folder/view/FolderView$3;

    invoke-direct {v6, p0}, Lcom/android/launcher3/folder/view/FolderView$3;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 360
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v6, Lcom/android/launcher3/folder/view/FolderView$4;

    invoke-direct {v6, p0}, Lcom/android/launcher3/folder/view/FolderView$4;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v6, Lcom/android/launcher3/folder/view/FolderView$5;

    invoke-direct {v6, p0}, Lcom/android/launcher3/folder/view/FolderView$5;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v6, Lcom/android/launcher3/folder/view/FolderView$6;

    invoke-direct {v6, p0}, Lcom/android/launcher3/folder/view/FolderView$6;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 401
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v6, Lcom/android/launcher3/folder/view/FolderView$7;

    invoke-direct {v6, p0}, Lcom/android/launcher3/folder/view/FolderView$7;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnEventListener(Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;)V

    .line 437
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 438
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v5, v8}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setSelectAllOnFocus(Z)V

    .line 440
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setFocusableInTouchMode(Z)V

    .line 441
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getInputType()I

    move-result v6

    or-int/lit16 v6, v6, 0x2000

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setInputType(I)V

    .line 442
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Lcom/android/launcher3/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 445
    const v5, 0x7f110079

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    .line 446
    const v5, 0x7f11007c

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    .line 448
    new-instance v3, Lcom/android/launcher3/folder/view/FolderView$8;

    invoke-direct {v3, p0}, Lcom/android/launcher3/folder/view/FolderView$8;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 463
    .local v3, "optionClickListener":Landroid/view/View$OnClickListener;
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$9;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$9;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 481
    .local v4, "optionTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    .line 486
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v2

    .line 487
    .local v2, "hover":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v2, :cond_0

    .line 488
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v2    # "hover":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_0
    :goto_0
    const v5, 0x7f110075

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    .line 495
    const v5, 0x7f11007d

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderBottomLine:Landroid/view/View;

    .line 496
    const v5, 0x7f110080

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    .line 497
    const v5, 0x7f110082

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    .line 498
    const v5, 0x7f110081

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    .line 501
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 502
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 505
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->setupFolderLayout()V

    .line 507
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->createAddButton()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    .line 508
    invoke-virtual {p0, v8}, Lcom/android/launcher3/folder/view/FolderView;->showAddButton(Z)V

    .line 511
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    .line 512
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v7, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v5, 0x7f110087

    .line 513
    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 512
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v7, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v5, 0x7f110088

    .line 515
    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 514
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v7, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v5, 0x7f110089

    .line 517
    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 516
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v7, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v5, 0x7f11008a

    .line 519
    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 518
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v7, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v5, 0x7f11008b

    .line 521
    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 520
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 523
    .local v0, "colorView":Landroid/widget/ImageView;
    new-instance v6, Lcom/android/launcher3/folder/view/FolderView$10;

    invoke-direct {v6, p0}, Lcom/android/launcher3/folder/view/FolderView$10;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 490
    .end local v0    # "colorView":Landroid/widget/ImageView;
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v5, "FolderView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Method not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 549
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1180
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 1184
    :goto_0
    return-void

    .line 1183
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2765
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v4, :cond_1

    .line 2801
    :cond_0
    :goto_0
    return v2

    .line 2769
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v4, :cond_0

    .line 2770
    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4}, Lcom/android/launcher3/util/Talk;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    if-eqz v4, :cond_0

    .line 2772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2774
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2787
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolder(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2789
    .local v1, "isOverFolderOrDropBar":Z
    if-nez v1, :cond_3

    iget-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    if-nez v4, :cond_3

    .line 2790
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 2791
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    move v2, v3

    .line 2792
    goto :goto_0

    .line 2776
    .end local v1    # "isOverFolderOrDropBar":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolder(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2778
    .restart local v1    # "isOverFolderOrDropBar":Z
    if-nez v1, :cond_2

    .line 2779
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 2780
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    move v2, v3

    .line 2781
    goto :goto_0

    .line 2783
    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    goto :goto_0

    .line 2793
    :cond_3
    if-nez v1, :cond_4

    move v2, v3

    .line 2794
    goto :goto_0

    .line 2796
    :cond_4
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    goto :goto_0

    .line 2774
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 2819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2820
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2824
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemAdded(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x1

    .line 2244
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    .line 2260
    :goto_0
    return-void

    .line 2248
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2249
    const/4 v0, -0x1

    iput v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 2250
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 2251
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    .line 2252
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->rebindItems(Ljava/util/ArrayList;)V

    .line 2257
    :goto_1
    iput-boolean v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2259
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    .line 2254
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForNewItem(Z)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/common/base/item/IconInfo;I)Landroid/view/View;

    .line 2255
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_1
.end method

.method public onItemRemoved(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v2, 0x1

    .line 2290
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2293
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eq p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    if-eqz v1, :cond_1

    .line 2328
    :cond_0
    :goto_0
    return-void

    .line 2297
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    .line 2298
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 2299
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v2, :cond_4

    .line 2300
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    .line 2304
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_3

    .line 2305
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_5

    .line 2306
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2307
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    .line 2309
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolderIfLackItem()V

    .line 2316
    :cond_3
    :goto_2
    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$20;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/folder/view/FolderView$20;-><init>(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->post(Ljava/lang/Runnable;)Z

    .line 2327
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    .line 2302
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    goto :goto_1

    .line 2311
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    goto :goto_2
.end method

.method public onItemsAdded(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    .line 2264
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    .line 2286
    :goto_0
    return-void

    .line 2268
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2269
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2270
    .local v7, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v1, -0x1

    iput v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    goto :goto_1

    .line 2272
    .end local v7    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItems(Ljava/util/ArrayList;JJ)V

    .line 2273
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    .line 2274
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->rebindItems(Ljava/util/ArrayList;)V

    .line 2275
    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2285
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    .line 2277
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2279
    .local v6, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForNewItem(Z)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/common/base/item/IconInfo;I)Landroid/view/View;

    .line 2280
    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    goto :goto_3

    .line 2282
    .end local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItems(Ljava/util/ArrayList;JJ)V

    goto :goto_2
.end method

.method public onItemsRemoved(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/4 v5, 0x1

    .line 2334
    iget-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    if-eqz v3, :cond_0

    .line 2368
    :goto_0
    return-void

    .line 2338
    :cond_0
    const/4 v1, 0x0

    .line 2339
    .local v1, "rearrange":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2340
    .local v0, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eq v0, v4, :cond_1

    .line 2343
    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2344
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v2

    .line 2345
    .local v2, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 2346
    const/4 v1, 0x1

    .line 2347
    goto :goto_1

    .line 2349
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_4

    .line 2350
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v3, v5, :cond_5

    .line 2351
    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    .line 2355
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v3

    if-gt v3, v5, :cond_4

    .line 2356
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v3, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v3, :cond_6

    .line 2357
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2358
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    .line 2360
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolderIfLackItem()V

    .line 2367
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    .line 2353
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    goto :goto_2

    .line 2362
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    goto :goto_3
.end method

.method public onLockedFolderOpenStateUpdated(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "opened"    # Ljava/lang/Boolean;

    .prologue
    .line 2392
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    .line 2393
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 682
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v1

    .line 685
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAllIconViewInflated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 686
    const-string v0, "FolderView"

    const-string v2, "onLongClick : all items are not bound yet"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->stopBounceAnimation()V

    .line 692
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->clearFocus()V

    .line 694
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    instance-of v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_5

    .line 695
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    check-cast v0, Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAppsLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    move v0, v1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->beginDrag(Landroid/view/View;Z)Z

    move-result v1

    goto :goto_0

    .line 699
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 704
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2051
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaWidth()I

    move-result v7

    .line 2052
    .local v7, "contentWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaHeight()I

    move-result v6

    .line 2053
    .local v6, "contentHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateBorderWidth()I

    move-result v2

    .line 2054
    .local v2, "borderWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int v4, v14, v6

    .line 2055
    .local v4, "broderHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderWidth()I

    move-result v12

    .line 2056
    .local v12, "maxWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight(I)I

    move-result v10

    .line 2063
    .local v10, "maxHeight":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2064
    .local v5, "contentAreaHeightSpec":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2065
    .local v3, "borderWidthSpec":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2066
    .local v1, "borderHeightSpec":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 2067
    .local v13, "maxWidthSpec":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 2069
    .local v11, "maxHeightSpec":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderContainer:Landroid/view/View;

    invoke-virtual {v14, v13, v11}, Landroid/view/View;->measure(II)V

    .line 2070
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v14, v12, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFixedSize(II)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mContentContainer:Landroid/view/View;

    invoke-virtual {v14, v13, v5}, Landroid/view/View;->measure(II)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v14, v3, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v14, v3, v15}, Landroid/view/View;->measure(II)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v14, v3, v15}, Landroid/view/View;->measure(II)V

    .line 2076
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/view/View;->measure(II)V

    .line 2078
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderWidth()I

    move-result v9

    .line 2079
    .local v9, "folderWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight(I)I

    move-result v8

    .line 2080
    .local v8, "folderHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/android/launcher3/folder/view/FolderView;->setMeasuredDimension(II)V

    .line 2082
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    .line 2083
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    .line 2084
    return-void
.end method

.method public onOpen(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "openFolderAnim"    # Landroid/animation/Animator;

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/view/DragLayer;

    if-nez v0, :cond_0

    .line 1100
    :goto_0
    return-void

    .line 1079
    :cond_0
    const-string v0, "FolderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    if-eqz p1, :cond_1

    .line 1082
    new-instance v0, Lcom/android/launcher3/folder/view/FolderView$14;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/view/FolderView$14;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1097
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    .line 1098
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFocusOnFirstChild()V

    goto :goto_0
.end method

.method public onOrderingChanged(Z)V
    .locals 2
    .param p1, "alphabeticalOrder"    # Z

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->rebindItems(Ljava/util/ArrayList;)V

    .line 2387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2388
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1189
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 1191
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->sendAccessibilityEvent(I)V

    .line 1196
    :goto_0
    return-void

    .line 1195
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 849
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 850
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 852
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2382
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 882
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    :cond_0
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 857
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 859
    if-eqz p1, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$12;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$12;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->post(Ljava/lang/Runnable;)Z

    .line 873
    :cond_0
    return-void
.end method

.method public prepareOpen()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1020
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->setActiveMarker(I)V

    .line 1021
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    .line 1022
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateCellDimensions()V

    .line 1023
    iget-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-nez v3, :cond_0

    .line 1025
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->snapToPageImmediately(I)V

    .line 1027
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAllIconViewInflated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1028
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->inflateIconViewStubPerPage(I)V

    .line 1029
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->inflateAllIconViewStubsInBackground()V

    .line 1033
    :cond_1
    iput v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    .line 1034
    iput v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    .line 1036
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->setupFolderLayout()V

    .line 1037
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->centerAboutIcon()V

    .line 1040
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1041
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->forceTouchMove()V

    .line 1044
    :cond_2
    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    .line 1045
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 1046
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEnabled(Z)V

    .line 1047
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setVisibility(I)V

    .line 1048
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 1051
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->setFolderContentColor()V

    .line 1053
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/controller/FolderController;->getSearchedAppInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    .line 1054
    .local v0, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v0, :cond_5

    .line 1055
    iget v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v4

    div-int v1, v3, v4

    .line 1056
    .local v1, "page":I
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->snapToPageImmediately(I)V

    .line 1057
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v2

    .line 1058
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->stopBounceAnimation()V

    .line 1059
    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->startBounceAnimationForSearchedApp(Landroid/view/View;)V

    .line 1060
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/controller/FolderController;->setSearchedAppInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1065
    .end local v1    # "page":I
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->setVisibility(I)V

    .line 1066
    invoke-virtual {p0, v6}, Lcom/android/launcher3/folder/view/FolderView;->setTranslationX(F)V

    .line 1067
    invoke-virtual {p0, v6}, Lcom/android/launcher3/folder/view/FolderView;->setTranslationY(F)V

    .line 1068
    invoke-virtual {p0, v7}, Lcom/android/launcher3/folder/view/FolderView;->setScaleX(F)V

    .line 1069
    invoke-virtual {p0, v7}, Lcom/android/launcher3/folder/view/FolderView;->setScaleY(F)V

    .line 1071
    iput v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    .line 1072
    return-void

    .line 1062
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->showAddButton(Z)V

    goto :goto_0
.end method

.method public rearrangeChildren()V
    .locals 1

    .prologue
    .line 2090
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren(I)V

    .line 2091
    return-void
.end method

.method public rearrangeChildren(I)V
    .locals 3
    .param p1, "itemCount"    # I

    .prologue
    .line 2100
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 2101
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 2102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    .line 2103
    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2970
    return-void
.end method

.method public setCrosshairsVisibility(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 2711
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setCrosshairsVisibilityChilds(I)V

    .line 2712
    return-void

    .line 2711
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDragInProgress(Z)V
    .locals 0
    .param p1, "drag"    # Z

    .prologue
    .line 2965
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    .line 2966
    return-void
.end method

.method public setDragMgr(Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 0
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 894
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 895
    return-void
.end method

.method public setFolderContentColor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1140
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getOutlineColor()I

    move-result v1

    .line 1141
    .local v1, "bgColor":I
    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-direct {v2, v1, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 1142
    .local v2, "filter":Landroid/graphics/ColorFilter;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1143
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1147
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setTextColor(I)V

    .line 1148
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const v4, -0x70000001

    and-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHintTextColor(I)V

    .line 1149
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderBottomLine:Landroid/view/View;

    const v4, 0x4dffffff    # 5.3687088E8f

    and-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1150
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->onChangeFolderIconTextColor()V

    .line 1151
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1152
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const v4, 0x7f110093

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1153
    .local v0, "addButtonText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1155
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    if-eqz v3, :cond_0

    .line 1156
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1157
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1164
    .end local v0    # "addButtonText":Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-void

    .line 1145
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 1159
    .restart local v0    # "addButtonText":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method public setFolderIcon(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 899
    return-void
.end method

.method public setMultiSelectManager(Lcom/android/launcher3/common/multiselect/MultiSelectManager;)V
    .locals 0
    .param p1, "multiSelectManager"    # Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 891
    return-void
.end method

.method public setSuppressFolderCloseOnce()V
    .locals 2

    .prologue
    .line 2950
    const-string v0, "FolderView"

    const-string v1, "setSuppressFolderCloseOnce"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    .line 2952
    return-void
.end method

.method public setSuppressFolderNameFocus(J)V
    .locals 5
    .param p1, "delayToRevert"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 3023
    const-string v2, "FolderView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "suppressFolderNameFocus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setFocusableInTouchMode(Z)V

    .line 3025
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v3, Lcom/android/launcher3/folder/view/FolderView$24;

    invoke-direct {v3, p0}, Lcom/android/launcher3/folder/view/FolderView$24;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    .end local p1    # "delayToRevert":J
    :goto_0
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/launcher3/folder/view/FolderNameEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3031
    return-void

    .restart local p1    # "delayToRevert":J
    :cond_0
    move-wide p1, v0

    .line 3025
    goto :goto_0
.end method

.method public setSuppressOnAdd(Z)V
    .locals 0
    .param p1, "supressOnAdd"    # Z

    .prologue
    .line 3019
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    .line 3020
    return-void
.end method

.method public showAddButton(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2673
    if-eqz p1, :cond_1

    .line 2674
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->animateAppear(Landroid/view/View;)V

    .line 2682
    :cond_0
    :goto_0
    return-void

    .line 2676
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHintPages()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2699
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    if-nez v0, :cond_1

    .line 2700
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/android/launcher3/folder/view/FolderView;->measure(II)V

    .line 2702
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mPageSpacingOnDrag:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->setHintPageWidth(I)V

    .line 2703
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->showHintPages(Z)V

    .line 2704
    return-void
.end method

.method public showItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 2234
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    .line 2235
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2236
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2238
    :cond_0
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V
    .locals 1
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p2, "allowQuickOption"    # Z

    .prologue
    .line 750
    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/folder/view/FolderView;->beginDrag(Landroid/view/View;Z)Z

    .line 751
    return-void
.end method

.method public startEditingFolderName()V
    .locals 5

    .prologue
    .line 758
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 759
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    .line 761
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 762
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0901ab

    .line 763
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "screenID":Ljava/lang/String;
    :goto_0
    const v3, 0x7f09013b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "eventID":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    return-void

    .line 763
    .end local v0    # "eventID":Ljava/lang/String;
    .end local v2    # "screenID":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0901b7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public stopBounceAnimation()V
    .locals 1

    .prologue
    .line 2973
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 2974
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->stop()V

    .line 2975
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 2976
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->showAddButton(Z)V

    .line 2978
    :cond_0
    return-void
.end method

.method public toggleColorPicker()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2633
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    .line 2634
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2635
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEnabled(Z)V

    .line 2636
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->animateAppear(Landroid/view/View;)V

    .line 2637
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->animateDismiss(Landroid/view/View;Z)V

    .line 2643
    :goto_0
    return-void

    .line 2639
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEnabled(Z)V

    .line 2640
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->animateDismiss(Landroid/view/View;Z)V

    .line 2641
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->animateAppear(Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateContentFocus()V
    .locals 4

    .prologue
    .line 2199
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    .line 2200
    .local v0, "firstChild":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    .line 2201
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 2202
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setNextFocusDownId(I)V

    .line 2203
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    .line 2204
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1

    .line 2205
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    .line 2209
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2210
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 2211
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 2212
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 2221
    :cond_0
    :goto_1
    return-void

    .line 2207
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusRightId(I)V

    goto :goto_0

    .line 2215
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2216
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setNextFocusDownId(I)V

    .line 2217
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    .line 2218
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_1
.end method

.method public updateDeletedFolder()V
    .locals 1

    .prologue
    .line 3034
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    if-nez v0, :cond_0

    .line 3035
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    .line 3037
    :cond_0
    return-void
.end method
