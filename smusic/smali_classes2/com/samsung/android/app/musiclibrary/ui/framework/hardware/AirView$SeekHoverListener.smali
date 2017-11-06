.class Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;
.super Ljava/lang/Object;
.source "AirView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeekHoverListener"
.end annotation


# instance fields
.field private final mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .line 138
    return-void
.end method

.method private updateAirView(Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 175
    invoke-static {p1, p3, p4}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setPopupOffset(Landroid/view/View;II)V

    .line 176
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Landroid/view/View;)V

    .line 177
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->setHoverPositionX(I)V

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "hoverLevel"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .line 166
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->getHoverChangedView(Landroid/widget/SeekBar;IZ)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->getPositionX()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .line 169
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->getPositionY()I

    move-result v2

    .line 168
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->updateAirView(Landroid/view/View;Landroid/view/View;II)V

    .line 172
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onStartTrackingHover(Landroid/widget/SeekBar;I)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "hoverLevel"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->getStartTrackingHoverView(Landroid/widget/SeekBar;I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->getPositionX()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .line 146
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->getPositionY()I

    move-result v2

    .line 145
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->updateAirView(Landroid/view/View;Landroid/view/View;II)V

    .line 149
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onStopTrackingHover(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->getStopTrackingHoverView(Landroid/widget/SeekBar;)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->getPositionX()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->mOnAirSeekBarPopupListener:Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    .line 157
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;->getPositionY()I

    move-result v2

    .line 156
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;->updateAirView(Landroid/view/View;Landroid/view/View;II)V

    .line 160
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
