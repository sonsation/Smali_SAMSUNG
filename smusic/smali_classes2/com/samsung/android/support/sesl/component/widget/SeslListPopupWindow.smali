.class public Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;
.super Ljava/lang/Object;
.source "SeslListPopupWindow.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;,
        Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;,
        Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ListSelectorHider;,
        Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SeslListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 85
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "setClipToScreenEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "getMaxAvailableHeight"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_1
    :try_start_2
    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "setEpicenterBounds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    :goto_2
    return-void

    .line 87
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "SeslListPopupWindow"

    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    const-string v1, "SeslListPopupWindow"

    const-string v2, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 100
    :catch_2
    move-exception v0

    .line 101
    const-string v1, "SeslListPopupWindow"

    const-string v2, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 217
    const/4 v0, 0x0

    const v1, 0x10102ff

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    const v0, 0x10102ff

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHeight:I

    .line 110
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    .line 113
    const/16 v1, 0x3ea

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWindowLayoutType:I

    .line 115
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 117
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownGravity:I

    .line 119
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 120
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 121
    const v1, 0x7fffffff

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mListItemExpandMaximum:I

    .line 124
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptPosition:I

    .line 135
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mResizePopupRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;

    .line 136
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTouchInterceptor:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;

    .line 137
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;

    .line 138
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ListSelectorHider;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ListSelectorHider;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mHideSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ListSelectorHider;

    .line 143
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 255
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mContext:Landroid/content/Context;

    .line 256
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 258
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 260
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHorizontalOffset:I

    .line 262
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffset:I

    .line 264
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v1, :cond_0

    .line 265
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 267
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 270
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 271
    return-void
.end method

.method private buildDropDown()I
    .locals 25

    .prologue
    .line 1127
    const/16 v19, 0x0

    .line 1129
    .local v19, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    if-nez v2, :cond_8

    .line 1130
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mContext:Landroid/content/Context;

    .line 1138
    .local v9, "context":Landroid/content/Context;
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1149
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mModal:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1153
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setFocusable(Z)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setFocusableInTouchMode(Z)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupScrollListener;

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_1

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1181
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 1183
    .local v10, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1184
    .local v14, "hintView":Landroid/view/View;
    if-eqz v14, :cond_2

    .line 1187
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1188
    .local v12, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1190
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v13, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1194
    .local v13, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptPosition:I

    packed-switch v2, :pswitch_data_0

    .line 1206
    const-string v2, "SeslListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    if-ltz v2, :cond_7

    .line 1215
    const/high16 v22, -0x80000000

    .line 1216
    .local v22, "widthMode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    move/from16 v23, v0

    .line 1221
    .local v23, "widthSize":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1222
    .local v24, "widthSpec":I
    const/4 v11, 0x0

    .line 1223
    .local v11, "heightSpec":I
    const/4 v2, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1225
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1226
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v19, v2, v4

    .line 1229
    move-object v10, v12

    .line 1232
    .end local v11    # "heightSpec":I
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v22    # "widthMode":I
    .end local v23    # "widthSize":I
    .end local v24    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1247
    .end local v9    # "context":Landroid/content/Context;
    .end local v14    # "hintView":Landroid/view/View;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1248
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v20, v2, v4

    .line 1254
    .local v20, "padding":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v2, :cond_4

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffset:I

    .line 1263
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1264
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_a

    const/4 v15, 0x1

    .line 1265
    .local v15, "ignoreBottomDecorations":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffset:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v18

    .line 1267
    .local v18, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    .line 1268
    :cond_5
    add-int v2, v18, v20

    .line 1300
    :goto_6
    return v2

    .line 1149
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v15    # "ignoreBottomDecorations":Z
    .end local v18    # "maxHeight":I
    .end local v20    # "padding":I
    .restart local v9    # "context":Landroid/content/Context;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1196
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1201
    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1202
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1218
    :cond_7
    const/16 v22, 0x0

    .line 1219
    .restart local v22    # "widthMode":I
    const/16 v23, 0x0

    .restart local v23    # "widthSize":I
    goto/16 :goto_2

    .line 1234
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "hintView":Landroid/view/View;
    .end local v22    # "widthMode":I
    .end local v23    # "widthSize":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1235
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 1236
    .local v21, "view":Landroid/view/View;
    if-eqz v21, :cond_3

    .line 1238
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1239
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v19, v2, v4

    goto/16 :goto_3

    .line 1258
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "view":Landroid/view/View;
    .restart local v8    # "background":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1259
    const/16 v20, 0x0

    .restart local v20    # "padding":I
    goto :goto_4

    .line 1264
    :cond_a
    const/4 v15, 0x0

    goto :goto_5

    .line 1272
    .restart local v15    # "ignoreBottomDecorations":Z
    .restart local v18    # "maxHeight":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    packed-switch v2, :pswitch_data_1

    .line 1286
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1292
    .local v3, "childWidthSpec":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    const/4 v4, 0x0

    const/4 v5, -0x1

    sub-int v6, v18, v19

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v16

    .line 1294
    .local v16, "listContent":I
    if-lez v16, :cond_c

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 1296
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getPaddingBottom()I

    move-result v4

    add-int v17, v2, v4

    .line 1297
    .local v17, "listPadding":I
    add-int v2, v20, v17

    add-int v19, v19, v2

    .line 1300
    .end local v17    # "listPadding":I
    :cond_c
    add-int v2, v16, v19

    goto/16 :goto_6

    .line 1274
    .end local v3    # "childWidthSpec":I
    .end local v16    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mContext:Landroid/content/Context;

    .line 1275
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    const/high16 v4, -0x80000000

    .line 1274
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1278
    .restart local v3    # "childWidthSpec":I
    goto :goto_7

    .line 1280
    .end local v3    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mContext:Landroid/content/Context;

    .line 1281
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    .line 1280
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1284
    .restart local v3    # "childWidthSpec":I
    goto :goto_7

    .line 1194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1272
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    .line 1402
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 1404
    :try_start_0
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 1405
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1404
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1411
    :goto_0
    return v1

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeslListPopupWindow"

    const-string v2, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v1

    goto :goto_0
.end method

.method private static isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1388
    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 761
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 762
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 763
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 764
    check-cast v0, Landroid/view/ViewGroup;

    .line 765
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 768
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 6
    .param p1, "clip"    # Z

    .prologue
    .line 1392
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 1394
    :try_start_0
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeslListPopupWindow"

    const-string v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 819
    .local v0, "list":Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
    if-eqz v0, :cond_0

    .line 821
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setListSelectionHidden(Z)V

    .line 823
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->requestLayout()V

    .line 825
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1111
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 923
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 744
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 745
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->removePromptView()V

    .line 746
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 747
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 748
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mResizePopupRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 749
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 918
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    const/4 v0, 0x0

    .line 870
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    const-wide/high16 v0, -0x8000000000000000L

    .line 896
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    const/4 v0, -0x1

    .line 883
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    const/4 v0, 0x0

    .line 909
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 487
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 948
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 954
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 955
    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    .line 956
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isConfirmKey(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 957
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 960
    .local v4, "curIndex":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 962
    .local v2, "below":Z
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 965
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 966
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 968
    .local v6, "lastItem":I
    if-eqz v0, :cond_1

    .line 969
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 970
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5

    move v5, v8

    .line 972
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 976
    .end local v1    # "allEnabled":Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    .line 980
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->clearListSelection()V

    .line 981
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 982
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->show()V

    .line 1028
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :goto_3
    :sswitch_0
    return v7

    .restart local v4    # "curIndex":I
    :cond_4
    move v2, v8

    .line 960
    goto :goto_0

    .line 970
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v2    # "below":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 971
    invoke-virtual {v9, v8, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->lookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_1

    .line 972
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 973
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_2

    .line 987
    .end local v1    # "allEnabled":Z
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v9, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setListSelectionHidden(Z)V

    .line 990
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v9, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 993
    .local v3, "consumed":Z
    if-eqz v3, :cond_9

    .line 996
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1001
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->requestFocusFromTouch()Z

    .line 1002
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->show()V

    .line 1004
    sparse-switch p1, :sswitch_data_0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v3    # "consumed":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :cond_8
    move v7, v8

    .line 1028
    goto :goto_3

    .line 1014
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "below":Z
    .restart local v3    # "consumed":Z
    .restart local v4    # "curIndex":I
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 1017
    if-ne v4, v6, :cond_8

    goto :goto_3

    .line 1020
    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

    .line 1004
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 1066
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1070
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1071
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1072
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 1073
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1087
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .line 1076
    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1077
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1078
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 1079
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1081
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1082
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->dismiss()V

    goto :goto_0

    .line 1087
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 1043
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1044
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->dismiss()V

    .line 1051
    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 853
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 854
    .local v1, "list":Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 855
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 856
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 858
    .end local v1    # "list":Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    .line 860
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 630
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 281
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupDataSetObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 285
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 286
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    :cond_2
    return-void

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 463
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 464
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 434
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 435
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 548
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 549
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 550
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 551
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 367
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 521
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownGravity:I

    .line 522
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 511
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 512
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 351
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 570
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHeight:I

    .line 571
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 479
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHorizontalOffset:I

    .line 480
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 783
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 784
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 933
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mListItemExpandMaximum:I

    .line 934
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 410
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mModal:Z

    .line 329
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 330
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 757
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 758
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 594
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 595
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 605
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 606
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 305
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptPosition:I

    .line 306
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isShowing()Z

    move-result v0

    .line 616
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->removePromptView()V

    .line 619
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPromptView:Landroid/view/View;

    .line 620
    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->show()V

    .line 623
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 802
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 803
    .local v0, "list":Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 804
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setListSelectionHidden(Z)V

    .line 805
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setSelection(I)V

    .line 807
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setItemChecked(IZ)V

    .line 811
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 391
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 498
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffset:I

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 500
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 538
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    .line 539
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 583
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWindowLayoutType:I

    .line 584
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 638
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->buildDropDown()I

    move-result v7

    .line 640
    .local v7, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v9

    .line 641
    .local v9, "noInputMethod":Z
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 643
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 645
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_2

    .line 648
    const/4 v11, -0x1

    .line 656
    .local v11, "widthSpec":I
    :goto_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_8

    .line 659
    if-eqz v9, :cond_4

    move v8, v7

    .line 660
    .local v8, "heightSpec":I
    :goto_1
    if-eqz v9, :cond_6

    .line 661
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_5

    move v0, v5

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 663
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 675
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 677
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffset:I

    if-gez v11, :cond_a

    move v4, v5

    :goto_4
    if-gez v8, :cond_b

    :goto_5
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 737
    :cond_1
    :goto_6
    return-void

    .line 649
    .end local v8    # "heightSpec":I
    .end local v11    # "widthSpec":I
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    if-ne v0, v4, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .restart local v11    # "widthSpec":I
    goto :goto_0

    .line 652
    .end local v11    # "widthSpec":I
    :cond_3
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    .restart local v11    # "widthSpec":I
    goto :goto_0

    :cond_4
    move v8, v5

    .line 659
    goto :goto_1

    .restart local v8    # "heightSpec":I
    :cond_5
    move v0, v1

    .line 661
    goto :goto_2

    .line 665
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_7

    move v0, v5

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 667
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    :cond_7
    move v0, v1

    .line 665
    goto :goto_7

    .line 669
    .end local v8    # "heightSpec":I
    :cond_8
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHeight:I

    if-ne v0, v4, :cond_9

    .line 670
    move v8, v7

    .restart local v8    # "heightSpec":I
    goto :goto_3

    .line 672
    .end local v8    # "heightSpec":I
    :cond_9
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHeight:I

    .restart local v8    # "heightSpec":I
    goto :goto_3

    :cond_a
    move v4, v11

    .line 677
    goto :goto_4

    :cond_b
    move v5, v8

    goto :goto_5

    .line 682
    .end local v8    # "heightSpec":I
    .end local v11    # "widthSpec":I
    :cond_c
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_12

    .line 683
    const/4 v11, -0x1

    .line 693
    .restart local v11    # "widthSpec":I
    :goto_8
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_14

    .line 694
    const/4 v8, -0x1

    .line 703
    .restart local v8    # "heightSpec":I
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 704
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 705
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 709
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_d

    move v1, v2

    :cond_d
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 710
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mTouchInterceptor:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 711
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    .line 713
    :try_start_0
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    aput-object v12, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :cond_e
    :goto_a
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHorizontalOffset:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownVerticalOffset:I

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownGravity:I

    invoke-virtual {v0, v1, v3, v4, v12}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 722
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 723
    .local v10, "parentView":Landroid/view/View;
    if-eqz v10, :cond_f

    .line 724
    invoke-virtual {v10, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 728
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setSelection(I)V

    .line 730
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mModal:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 731
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->clearListSelection()V

    .line 733
    :cond_11
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mModal:Z

    if-nez v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mHideSelector:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 685
    .end local v8    # "heightSpec":I
    .end local v10    # "parentView":Landroid/view/View;
    .end local v11    # "widthSpec":I
    :cond_12
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    if-ne v0, v4, :cond_13

    .line 686
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .restart local v11    # "widthSpec":I
    goto/16 :goto_8

    .line 688
    .end local v11    # "widthSpec":I
    :cond_13
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownWidth:I

    .restart local v11    # "widthSpec":I
    goto/16 :goto_8

    .line 696
    :cond_14
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHeight:I

    if-ne v0, v4, :cond_15

    .line 697
    move v8, v7

    .restart local v8    # "heightSpec":I
    goto/16 :goto_9

    .line 699
    .end local v8    # "heightSpec":I
    :cond_15
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownHeight:I

    .restart local v8    # "heightSpec":I
    goto/16 :goto_9

    .line 714
    :catch_0
    move-exception v6

    .line 715
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "SeslListPopupWindow"

    const-string v1, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method
