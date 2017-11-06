.class Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    .prologue
    .line 3070
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3122
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3074
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3075
    const-class v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3076
    move-object v0, p2

    .line 3077
    .local v0, "recordCompat":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 3078
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v1, :cond_0

    .line 3080
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 3081
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 3082
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 3084
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3088
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3089
    const-class v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3090
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3091
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3092
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3094
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3095
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3097
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3101
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3118
    :goto_0
    return v0

    .line 3104
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 3118
    goto :goto_0

    .line 3106
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3107
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget v2, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3110
    goto :goto_0

    .line 3112
    :sswitch_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3113
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget v2, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3116
    goto :goto_0

    .line 3104
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
