.class Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SeslCompatPopupWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslCompatPopupWindow"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasNavigationBar:Z

.field private mNavigationBarHeight:I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
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
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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
    .param p4, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 105
    if-eqz p1, :cond_1

    const/high16 v3, 0x10f0000

    if-eq p1, v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 107
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 108
    .local v2, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_1

    .line 109
    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    .line 110
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 111
    .local v1, "isEmpty":Z
    :goto_0
    if-nez v1, :cond_1

    .line 116
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "isEmpty":Z
    .end local v2    # "transition":Landroid/transition/Transition;
    :goto_1
    return-object v2

    .line 110
    .restart local v0    # "inflater":Landroid/transition/TransitionInflater;
    .restart local v2    # "transition":Landroid/transition/Transition;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 116
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mContext:Landroid/content/Context;

    .line 77
    sget-object v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslPopupWindow:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslPopupWindow_android_overlapAnchor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslPopupWindow_android_overlapAnchor:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->setSupportOverlapAnchor(Z)V

    .line 83
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 84
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslPopupWindow_seslPopupEnterTransition:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 86
    .local v1, "enterTransition":Landroid/transition/Transition;
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslPopupWindow_seslPopupExitTransition:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 89
    .local v2, "exitTransition":Landroid/transition/Transition;
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 94
    .end local v1    # "enterTransition":Landroid/transition/Transition;
    .end local v2    # "exitTransition":Landroid/transition/Transition;
    :cond_1
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslPopupWindow_android_popupBackground:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x4

    .line 99
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mHasNavigationBar:Z

    .line 100
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/sesl/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mNavigationBarHeight:I

    .line 102
    return-void
.end method

.method private static wrapOnScrollChangedListener(Landroid/widget/PopupWindow;)V
    .locals 6
    .param p0, "popup"    # Landroid/widget/PopupWindow;

    .prologue
    .line 121
    :try_start_0
    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "mAnchor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 122
    .local v1, "fieldAnchor":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "mOnScrollChangedListener"

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 126
    .local v2, "fieldListener":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 133
    .local v3, "originalListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow$1;

    invoke-direct {v4, v1, p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow$1;-><init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "fieldAnchor":Ljava/lang/reflect/Field;
    .end local v2    # "fieldListener":Ljava/lang/reflect/Field;
    .end local v3    # "originalListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SeslCompatPopupWindow"

    const-string v5, "Exception while installing workaround OnScrollChangedListener"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 11
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 187
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 188
    .local v2, "displayFrame":Landroid/graphics/Rect;
    if-eqz p3, :cond_2

    .line 189
    invoke-static {p1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getWindowDisplayFrame(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 191
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mHasNavigationBar:Z

    if-eqz v7, :cond_0

    .line 192
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v5, v7, Landroid/content/res/Configuration;->orientation:I

    .line 193
    .local v5, "orientation":I
    if-eq v5, v10, :cond_0

    .line 194
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mNavigationBarHeight:I

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 201
    .end local v5    # "orientation":I
    :cond_0
    :goto_0
    new-array v0, v10, [I

    .line 202
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 204
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 207
    .local v1, "bottomEdge":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->getSupportOverlapAnchor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 208
    aget v7, v0, v9

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 212
    .local v3, "distanceToBottom":I
    :goto_1
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 215
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 216
    .local v6, "returnedHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 218
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 221
    :cond_1
    return v6

    .line 198
    .end local v0    # "anchorPos":[I
    .end local v1    # "bottomEdge":I
    .end local v3    # "distanceToBottom":I
    .end local v4    # "distanceToTop":I
    .end local v6    # "returnedHeight":I
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 210
    .restart local v0    # "anchorPos":[I
    .restart local v1    # "bottomEdge":I
    :cond_3
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .restart local v3    # "distanceToBottom":I
    goto :goto_1
.end method

.method public getSupportOverlapAnchor()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public setSupportOverlapAnchor(Z)V
    .locals 0
    .param p1, "overlapAnchor"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 159
    return-void
.end method
