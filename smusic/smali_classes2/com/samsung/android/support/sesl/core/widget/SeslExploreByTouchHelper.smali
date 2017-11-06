.class public abstract Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeslExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$BoundsAdapter",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$CollectionAdapter",
            "<",
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field private mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 331
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->NODE_ADAPTER:Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$BoundsAdapter;

    .line 343
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$2;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$CollectionAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "host"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x80000000

    .line 130
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 104
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempGlobalRect:[I

    .line 116
    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 119
    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 122
    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "View may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    .local v0, "context":Landroid/content/Context;
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 142
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 145
    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 148
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;

    .prologue
    .line 86
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;

    .prologue
    .line 86
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 980
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 981
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 982
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 983
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 985
    const/4 v0, 0x1

    .line 987
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .locals 3

    .prologue
    .line 477
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 633
    packed-switch p1, :pswitch_data_0

    .line 637
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    :goto_0
    return-object v0

    .line 635
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 673
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 674
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v0

    .line 675
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 678
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 680
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 681
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 682
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 683
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 686
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 689
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    .line 690
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 695
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2, v3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 697
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 699
    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 649
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 650
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 651
    return-object v0
.end method

.method private createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "virtualViewId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 788
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 791
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 792
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 793
    const-string v5, "android.view.View"

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 794
    sget-object v5, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 795
    sget-object v5, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 798
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 801
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_0

    .line 802
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 806
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 807
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 808
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 812
    :cond_1
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    .line 813
    .local v0, "actions":I
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_2

    .line 814
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 817
    :cond_2
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_3

    .line 818
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 823
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2, v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 825
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 828
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v5, p1, :cond_7

    .line 829
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 830
    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 837
    :goto_0
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v5, p1, :cond_8

    move v1, v3

    .line 838
    .local v1, "isFocused":Z
    :goto_1
    if-eqz v1, :cond_9

    .line 839
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 843
    :cond_4
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 846
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 847
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 848
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 853
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 854
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 855
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 856
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 857
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempGlobalRect:[I

    aget v4, v6, v4

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempGlobalRect:[I

    aget v3, v6, v3

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 858
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v3, v6

    .line 857
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 859
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 862
    :cond_6
    return-object v2

    .line 832
    .end local v1    # "isFocused":Z
    :cond_7
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 833
    const/16 v5, 0x40

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_8
    move v1, v4

    .line 837
    goto :goto_1

    .line 840
    .restart local v1    # "isFocused":Z
    :cond_9
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 841
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_2
.end method

.method private createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 731
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 732
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 735
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v4, "virtualViewIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 738
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    .line 739
    .local v3, "realNodeCount":I
    if-lez v3, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 740
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Views cannot have both real and virtual children"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 743
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 744
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    :cond_1
    return-object v2
.end method

.method private getAllNodes()Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v3, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 426
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;-><init>()V

    .line 427
    .local v0, "allNodes":Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;, "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v2, 0x0

    .local v2, "virtualViewId":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 428
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 429
    .local v1, "virtualView":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    .end local v1    # "virtualView":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    return-object v0
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 325
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 326
    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "host"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "direction"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 446
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 447
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 449
    .local v0, "h":I
    sparse-switch p1, :sswitch_data_0

    .line 463
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :sswitch_0
    invoke-virtual {p2, v1, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 467
    :goto_0
    return-object p2

    .line 454
    :sswitch_1
    invoke-virtual {p2, v3, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 457
    :sswitch_2
    invoke-virtual {p2, v2, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 460
    :sswitch_3
    invoke-virtual {p2, v3, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 449
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "localRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 903
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 933
    :cond_0
    :goto_0
    return v2

    .line 908
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 913
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 914
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 915
    check-cast v0, Landroid/view/View;

    .line 916
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 919
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 920
    goto :goto_1

    .line 923
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_0

    .line 928
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 933
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0
.end method

.method private static keyToDirection(I)I
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 305
    packed-switch p0, :pswitch_data_0

    .line 313
    :pswitch_0
    const/16 v0, 0x82

    :goto_0
    return v0

    .line 307
    :pswitch_1
    const/16 v0, 0x11

    goto :goto_0

    .line 309
    :pswitch_2
    const/16 v0, 0x21

    goto :goto_0

    .line 311
    :pswitch_3
    const/16 v0, 0x42

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .locals 18
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->getAllNodes()Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    move-result-object v2

    .line 370
    .local v2, "allNodes":Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;, "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 371
    .local v14, "focusedNodeId":I
    const/high16 v3, -0x80000000

    if-ne v14, v3, :cond_0

    const/4 v5, 0x0

    .line 375
    .local v5, "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 406
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    .end local v5    # "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    invoke-virtual {v2, v14}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v5, v3

    goto :goto_0

    .line 378
    .restart local v5    # "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 379
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v7, 0x1

    .line 380
    .local v7, "isLayoutRtl":Z
    :goto_1
    sget-object v3, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$CollectionAdapter;

    sget-object v4, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->NODE_ADAPTER:Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$BoundsAdapter;

    const/4 v8, 0x0

    move/from16 v6, p1

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$CollectionAdapter;Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 412
    .end local v7    # "isLayoutRtl":Z
    .local v16, "nextFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_2
    if-nez v16, :cond_4

    .line 413
    const/high16 v17, -0x80000000

    .line 419
    .local v17, "nextFocusedNodeId":I
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v3

    return v3

    .line 379
    .end local v16    # "nextFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v17    # "nextFocusedNodeId":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 388
    :sswitch_1
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 389
    .local v12, "selectedRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    .line 391
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    .line 402
    :goto_4
    sget-object v9, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$CollectionAdapter;

    sget-object v10, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->NODE_ADAPTER:Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$BoundsAdapter;

    move-object v8, v2

    move-object v11, v5

    move/from16 v13, p1

    invoke-static/range {v8 .. v13}, Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$CollectionAdapter;Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 404
    .restart local v16    # "nextFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_2

    .line 392
    .end local v16    # "nextFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    if-eqz p2, :cond_3

    .line 394
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 400
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v3, v0, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_4

    .line 415
    .end local v12    # "selectedRect":Landroid/graphics/Rect;
    .restart local v16    # "nextFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v15

    .line 416
    .local v15, "index":I
    invoke-virtual {v2, v15}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->keyAt(I)I

    move-result v17

    .restart local v17    # "nextFocusedNodeId":I
    goto :goto_3

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 879
    sparse-switch p2, :sswitch_data_0

    .line 889
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    .line 881
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    goto :goto_0

    .line 883
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    goto :goto_0

    .line 885
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    goto :goto_0

    .line 887
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v0

    goto :goto_0

    .line 879
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 2
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v0, 0x0

    .line 949
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 950
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 969
    :cond_0
    :goto_0
    return v0

    .line 954
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v1, p1, :cond_0

    .line 956
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 957
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    .line 961
    :cond_2
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 964
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 965
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 967
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2
    .param p1, "virtualViewId"    # I

    .prologue
    .line 608
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v1, p1, :cond_0

    .line 620
    :goto_0
    return-void

    .line 612
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 613
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 617
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 618
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_0
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1028
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v1, p1, :cond_0

    .line 1038
    :goto_0
    return v0

    .line 1033
    :cond_0
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1035
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1036
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1038
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/high16 v5, -0x80000000

    const/4 v2, 0x0

    .line 177
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 178
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v2

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 185
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    .line 186
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 187
    if-eq v0, v5, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 189
    .end local v0    # "virtualViewId":I
    :pswitch_2
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v3, v5, :cond_0

    .line 190
    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->updateHoveredVirtualView(I)V

    move v2, v1

    .line 191
    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 212
    const/4 v3, 0x0

    .line 214
    .local v3, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 215
    .local v0, "action":I
    if-eq v0, v7, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 217
    .local v5, "keyCode":I
    sparse-switch v5, :sswitch_data_0

    .line 253
    .end local v5    # "keyCode":I
    :cond_0
    :goto_0
    return v3

    .line 222
    .restart local v5    # "keyCode":I
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 223
    invoke-static {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->keyToDirection(I)I

    move-result v2

    .line 224
    .local v2, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 225
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 226
    invoke-direct {p0, v2, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    const/4 v3, 0x1

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 236
    .end local v1    # "count":I
    .end local v2    # "direction":I
    .end local v4    # "i":I
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 237
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    .line 239
    const/4 v3, 0x1

    goto :goto_0

    .line 244
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 245
    const/4 v6, 0x2

    invoke-direct {p0, v6, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    goto :goto_0

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mNodeProvider:Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mNodeProvider:Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mNodeProvider:Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .locals 2

    .prologue
    .line 522
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 523
    return-void
.end method

.method public final invalidateVirtualView(I)V
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 540
    return-void
.end method

.method public final invalidateVirtualView(II)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "changeTypes"    # I

    .prologue
    .line 562
    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 564
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 566
    const/16 v2, 0x800

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 568
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 569
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 572
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 716
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 717
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 720
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 271
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 272
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 275
    :cond_0
    if-eqz p1, :cond_1

    .line 276
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 278
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 656
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 659
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 660
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 752
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 755
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 756
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1109
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1097
    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1187
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "hasFocus"    # Z

    .prologue
    .line 597
    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 866
    packed-switch p1, :pswitch_data_0

    .line 870
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    .line 868
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 866
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 3
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 998
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return v0

    .line 1003
    :cond_1
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v2, p1, :cond_0

    .line 1008
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_2

    .line 1009
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 1012
    :cond_2
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1014
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1015
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move v0, v1

    .line 1017
    goto :goto_0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    const/4 v2, 0x0

    .line 501
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v2

    .line 505
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 506
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 511
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method
