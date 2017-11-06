.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;
.super Ljava/lang/Object;
.source "AirView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAirSeekBarPopupListener"
.end annotation


# virtual methods
.method public abstract getHoverChangedView(Landroid/widget/SeekBar;IZ)Landroid/view/View;
.end method

.method public abstract getPositionX()I
.end method

.method public abstract getPositionY()I
.end method

.method public abstract getStartTrackingHoverView(Landroid/widget/SeekBar;I)Landroid/view/View;
.end method

.method public abstract getStopTrackingHoverView(Landroid/widget/SeekBar;)Landroid/view/View;
.end method

.method public abstract setHoverPositionX(I)V
.end method
