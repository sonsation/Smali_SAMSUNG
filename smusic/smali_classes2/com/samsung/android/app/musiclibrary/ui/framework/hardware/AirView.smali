.class public Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;
.super Ljava/lang/Object;
.source "AirView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;
    }
.end annotation


# static fields
.field private static final DETECT_TIME:I = 0x190

.field private static final TYPE_TOOLTIP:I

.field private static final TYPE_USER_CUSTOM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_TOOLTIP:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->TYPE_TOOLTIP:I

    .line 43
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_USER_CUSTOM:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->TYPE_USER_CUSTOM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invalidateAirView(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 124
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->isShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->dismiss(Landroid/view/View;)V

    .line 126
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->show(Landroid/view/View;)V

    .line 129
    :cond_0
    return-void
.end method

.method public static setView(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 67
    if-eqz p0, :cond_0

    .line 68
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->TYPE_TOOLTIP:I

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupType(Landroid/view/View;I)V

    .line 70
    :cond_0
    return-void
.end method

.method public static setView(Landroid/view/View;I)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "gravity"    # I

    .prologue
    .line 76
    if-eqz p0, :cond_0

    .line 77
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->TYPE_TOOLTIP:I

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupType(Landroid/view/View;I)V

    .line 78
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setPopupGravity(Landroid/view/View;I)V

    .line 80
    :cond_0
    return-void
.end method

.method public static setView(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;

    .prologue
    .line 86
    if-eqz p0, :cond_0

    .line 87
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->TYPE_USER_CUSTOM:I

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupType(Landroid/view/View;I)V

    .line 88
    const/16 v0, 0x190

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverDetectTime(Landroid/view/View;I)V

    .line 89
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$1;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;Landroid/view/View;)V

    .line 90
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V

    .line 105
    :cond_0
    return-void
.end method

.method public static setView(Landroid/widget/SeekBar;Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;)V
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    .line 112
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->TYPE_USER_CUSTOM:I

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupType(Landroid/view/View;I)V

    .line 113
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;)V

    .line 114
    .local v0, "seekHoverListener":Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat;->setOnSeekBarHoverListener(Landroid/widget/SeekBar;Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;)V

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 117
    .end local v0    # "seekHoverListener":Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;
    :cond_0
    return-void
.end method
