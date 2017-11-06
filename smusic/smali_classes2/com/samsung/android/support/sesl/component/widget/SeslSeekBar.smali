.class public Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;
.source "SeslSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 128
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onHoverChanged(III)V
    .locals 2
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;->onHoverChanged(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;IZ)V

    .line 217
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onHoverChanged(III)V

    .line 218
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 139
    :cond_0
    return-void
.end method

.method onProgressRefresh(FZI)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onProgressRefresh(FZI)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0, p3, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;IZ)V

    .line 96
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 1
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;->onStartTrackingHover(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;I)V

    .line 195
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStartTrackingHover(III)V

    .line 196
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;)V

    .line 116
    :cond_0
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;->onStopTrackingHover(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;)V

    .line 206
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStopTrackingHover()V

    .line 207
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 108
    return-void
.end method

.method public setOnSeekBarHoverListener(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->mOnSeekBarHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarHoverListener;

    .line 185
    return-void
.end method
