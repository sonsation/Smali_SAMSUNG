.class public Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;
.super Ljava/lang/Object;
.source "HoverPopupWindowSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;,
        Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$Gravity;
    }
.end annotation


# static fields
.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 106
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 109
    :cond_0
    return-void
.end method

.method public static isShowing(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 113
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v1

    .line 116
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setContent(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "sourceView"    # Landroid/view/View;
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 85
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static setContent(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "sourceView"    # Landroid/view/View;
    .param p1, "contentText"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 92
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    return-void
.end method

.method public static setHoverDetectTime(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "time"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 78
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public static setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 121
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 129
    :cond_0
    return-void
.end method

.method public static setHoverPopupType(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 60
    return-void
.end method

.method public static setPopupGravity(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "gravity"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 64
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public static setPopupOffset(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 71
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 74
    :cond_0
    return-void
.end method

.method public static show(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 99
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 102
    :cond_0
    return-void
.end method
